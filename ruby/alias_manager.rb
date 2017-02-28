#Release0
#swap first and last names of Felicia Torres
#split first and last names into two arrays, reverse method and join:
spy = "Felicia Torres"
spy.split(" ").reverse.join(" ")

#change Felicia Torres to Vussit Gimodoe
spy = "Felicia Torres"
nspy = spy.split(" ").reverse.join(" ")
#public method tr retruns copy with chacters in first method argument, by characters in the second.
newvowl_nspy = nspy.tr('aeiou', 'eioua')
p newvowl_nspy
newconst_nspy = newvowl_nspy.tr('bcdfghjklmnpqrstvwxyz', 'cdfghjklmnpqrstvwxyzb')
p newconst_nspy
new_name = newconst_nspy.tr('BCDFGHJKLMNPQRSTVWXYZ', 'CDFGHJKLMNPQRSTVWXYZB')
p new_name

#Release1: implement ui loop for creating fake name 
#Release2: capture original and new name data in an dataset and print:
spyhash = {}
loop do
puts "Welcome to C.A.O.S., please enter your name or type 'quit':"
spy = gets.chomp
if spy == "quit"
	break
else
	record_spy = spy.to_sym
	nspy = spy.split(" ").reverse.join(" ")
	newvowl_nspy = nspy.tr('aeiouAEIOU', 'eiouaEIOUA')
	newconst_nspy = newvowl_nspy.tr('bcdfghjklmnpqrstvwxyz', 'cdfghjklmnpqrstvwxyzb')
	new_name = newconst_nspy.tr('BCDFGHJKLMNPQRSTVWXYZ', 'CDFGHJKLMNPQRSTVWXYZB')
	puts "Here is your new name: #{new_name}."
	spyhash[record_spy] = new_name
end
end
#print hash
spyhash.each do |spy, new_name| 
puts "#{new_name} is actually #{spy}"
end