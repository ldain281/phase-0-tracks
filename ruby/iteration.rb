#Release0: block feeding method

def gate_open
	status1 = "open"
	status2 = "closed"
	puts "did you leave the gate open?"
	yield(status1, status2)
end

gate_open {|status1, status2| puts "the gate is #{status1} and then #{status2}"}

#Release1: useing each and map with arrays and hashes
array1 = ["bird", "cat", "squirrel", "dog"]
hash1 = {:name=>"tweety", :species=>"bird", :lifespan=>2}

array1.each do |animal|
	puts "the #{animal} is in the yard"
end

hash1.each do |category, value|
	puts "here is hash1 key: #{category}"
	puts "here is hash1 value: #{value}"
end

array2 = array1.map! do |animal|
	puts animal
	animal.reverse
end
p array2

#Release2
#item1
#array methd that deletes numbers greater than 80
ages = [ 97, 42, 75, 80, 81 ]
ages.delete_if {|age| age > 80 }
p ages

#hash method that deletes numbers less than 2
numbers = {1 => 'one', 2 => 'two', 3 => 'three'}
numbers.delete_if {|number| number <= 2}
p numbers
#item2
#filters for cetain condition array
a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
a.map! {|i| i < 4}
p a
#item2 for certain condition array

b = {
  1 => 'one',
  2 => 'two',
  3 => 'three',
  4 => 'four',
  5 => 'five'
}

puts b.has_key?(4)
puts b.has_key?('ten')

#item3 filters arrays satifying certain conditions (comparing)

 d = [1, 2, 3]
  e = [1, 2, 3, 4]
  f = [1, 2, 2]
  c = [1, 2, 3, 5]
  z = [1, 2, 3, 4]
  if e == c
   puts "e is equal to c"  
  elsif e == z 
    puts "e is equal to z" 
  else 
    puts "d doesn't equal f" 
  end

#item4 method removes items from a data structure until the condition in the block evaluates to false, then stops

 students = [ 'Drake', 'Snoopdog', 'Susan', 'Kanye', 'Sara']
  students.delete_if {|name| name == "Susan"}
   p students