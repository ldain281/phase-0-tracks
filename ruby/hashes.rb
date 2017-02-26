# program for int. designer to enter client details
# prompt user for name, age, address, phone number, email, number of children, decor theme, structure description, number of bedrooms, number of bathrooms
# keys as :symbols


Intdesign_hash = {
# name = "Client name"
# age = "Age"
# address = "Address"
# phone = "Phone"
# email = "Email"
# children = "Children"
# decor_theme = "Decor theme"
# description = "Description"
# bedrooms = "Bedrooms"
# bathrooms = "Bathrooms"
}
# Convert any user input to the appropriate data type.
#questions for client:
print "Client Name: "
Intdesign_hash[name] = gets.chomp

print "Age: "
Intdesign_hash[age] = gets.chomp.to_i

print "Street address: "
Intdesign_hash[address] = gets.chomp

print "Phone number: "
Intdesign_hash[phone] = gets.chomp

print "Email: "
Intdesign_hash[email] = gets.chomp

print "Number of children: "
Intdesign_hash[children] = gets.chomp.to_i

print "Decor theme: "
Intdesign_hash[decor_theme] = gets.chomp

print "Structure description: "
Intdesign_hash[description] = gets.chomp

print "Number of bedrooms: "
Intdesign_hash[bedrooms] = gets.chomp.to_i

print "Number of bathrooms: "
Intdesign_hash[bathrooms] = gets.chomp.to_i

# print hash to screen after designer enters values
puts "Here are the client details:"
Intdesign_hash.each do |key, value|
puts "#{key}: #{value}."
end

print "Which field would you like to update and with what value?"
if gets.chomp == "none"
	puts "Never mind!"
else
	Intdesign_hash[gets.chomp.to_sym] = gets.chomp
	puts "Here are the updated client details:"
	Intdesign_hash.each do |key, value|
	puts "#{key}: #{value}."
end
end