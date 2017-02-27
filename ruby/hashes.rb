# 5.2 Release3 - program for int. designer to enter client details
# prompt user for name, age, address, phone number, email, number of children, decor theme, structure description, number of bedrooms, number of bathrooms
# keys as :symbols

Intdesign_hash = {}
# Convert any user input to the appropriate data type.
#questions for client:
print "Client Name: "
Intdesign_hash[:name] = gets.chomp

print "Age: "
Intdesign_hash[:age] = gets.chomp.to_i

print "Street address: "
Intdesign_hash[:address] = gets.chomp

print "Phone number: "
Intdesign_hash[:phone] = gets.chomp

print "Email: "
Intdesign_hash[:email] = gets.chomp

print "Number of children: "
Intdesign_hash[:children] = gets.chomp.to_i

print "Decor theme: "
Intdesign_hash[:decor_theme] = gets.chomp

print "Structure description: "
Intdesign_hash[:description] = gets.chomp

print "Number of bedrooms: "
Intdesign_hash[:bedrooms] = gets.chomp.to_i

print "Number of bathrooms: "
Intdesign_hash[:bathrooms] = gets.chomp.to_i

# print hash to screen after designer enters values
puts "Here are the client details:"
p Intdesign_hash
loop do
print "Which field from the above list would you like to update or add? Enter 'none' if you do not wish to update."		
	key = gets.chomp
	break if key == "none"
	update_key = key.to_sym
	puts "Now enter the value or description"
	Intdesign_hash[update_key] = gets.chomp
	puts "Here are the updated client details:"
	p Intdesign_hash
end