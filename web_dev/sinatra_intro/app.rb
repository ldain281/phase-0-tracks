# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
# get '/' do
#   "#{params[:name]} is #{params[:age]} years old."
# end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# Release0.1 write a GET route that retreives
# a particluar address
get '/contact/:address' do
address = params[:address]
  "Our address is #{address}"
  end
# Release0.2 write a GET route that retreives
# good job with if/else if query parameter is present
get '/great_job/' do
  name = params[:name]
  if name
    "Good job, #{name}"
  else
    "Good Job!"
  end
end

# Release0.3 write a route that uses GET route to add
# two numbers and retreives result
get '/add/:x/:y' do
  "#{params[:x].to_i + params[:y].to_i}"
end

# Release1.1: Is Sinatra the only web app library in Ruby? What are some others?
# Padrino, Rack, Cramp, Cuba, Merb, Hobo, Ramaze, Espresso, Nitro, Camping, Ruby on Rails, 
# 1.2: Are SQLite and the sqlite3 gem your only options for using a database with Sinatra? What are some others?
# Mongo, Fwitter 3, Postresqsl
# 1.3: What is meant by the term web stack?
# It refers to the components or technologies/languages/operating sytems/etc used to build a web site. For instance the "LAMP" stack is: Linux, Apache, MySQL, PHP


