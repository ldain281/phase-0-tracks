#Release1
#### array 
puts "Original Cities:"
us_cities = ["New York", "San Francisco", "Boston", "Seattle"]
puts us_cities
puts "Modified Cities:"
us_cities.each { |city| 
    puts "#{city}, city of sin"
}
puts us_cities
puts "Another Modified Cities:"
us_cities = us_cities.map do |x|
    "#{x}, city of angels"
end 
puts us_cities
us_cities.map! { |z| "#{z}, earthly cities" } 
puts us_cities
###### hash 
puts "Original Basketball Cities:"
more_cities = {
    "Los Angeles" => "Lakers",
    "Houston" => "Rockets",
    "Atlanta" => "Hawks",
    "Miami" => "Heat"
}
puts more_cities
puts "Modified Basketball Cities:"
more_cities.each { |value| print  "#{value.reverse} " }
convert = Hash[more_cities.map { |key, value| [key.to_sym, value.upcase] } ]
puts more_cities
puts convert

#Release2
#item1
#array methd that deletes numbers greater than 80
scores = [ 97, 42, 75 ]
scores.delete_if {|score| score > 80 }

#hash method that deletes numbers less than 2
numbers = {1 => 'one', 2 => 'two', 3 => 'three'}
numbers.delete_if {|number| number < 2}

#item2
#filters for cetain condition array
a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
puts a.drop_while {|i| i < 4}

#item2 for certain condition array

b = {
  1 => 'one',
  2 => 'two',
  3 => 'three',
  4 => 'four',
  5 => 'five'
}

puts b.has_key?(4)
puts b.has_key?("ten")

#item3 filters arrays satifying certain conditions (comparing)

 d = [1, 2, 3]
  e = [1, 2, 3, 4]
  f = [1, 2, 2]
  c = [1, 2, 3, 5]
  z = [1, 2, 3, 4]
  if e == c
   puts "e equals c"  
  elsif e == z 
    puts "e equals z" 
  else 
    puts "d doesn't equal f" 
  end

#item4 method removes items from a data structure until the condition in the block evaluates to false, then stops

 students = [ 'Drake', 'Snoopdog', 'Susan', 'Kanye', 'Sara']
  x=1 
  students.delete_if do |name|
   puts "#{x}. #{name}"
      x += 1 
  end