#a program that creates a barcoded inventory of stuff using barby barcode gem

require 'sqlite3'
require 'faker'
require 'barby'
require 'barby/barcode/code_128'
require 'barby/outputter/png_outputter'

# create SQLite3 database
barcode = Barby::Code128B.new('BARBY')
db = SQLite3::Database.new("bsome.db")

# can pass a block: db.execute( "select * from table" ) do |row|
db.results_as_hash = true

# learn about fancy string delimiters
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS inventory(
    id INTEGER PRIMARY KEY,
    barcode INT
    file_name VARCHAR(255),
  )
SQL

# create a table (if it's not there already)
db.execute(create_table_cmd)

# add a test
db.execute("INSERT INTO kittens (b_code, file_name) VALUES ('0978789778', 'book')")


# def create_inventory(db, barcode.to_ascii, file_name)
#   db.execute("INSERT INTO inventory (barcode, file_name) VALUES (?, ?)", [barcode, file_name])
# end

# 1000.times do
#   create_inventory(db, , Faker::File.file_name)
# end

# explore ORM by retrieving data
# kittens = db.execute("SELECT * FROM kittens")
# kittens.each do |kitten|
#  puts "#{kitten['name']} is #{kitten['age']}"
# end