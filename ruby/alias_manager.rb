#Release0
#swap first and last names of Felicia Torres
spy = "Felicia Torres"
spy.split(" ").reverse.join(" ")

#change Felicia Torres to Vussit Gimodoe .next .scan /\w/s
spy = "Felicia Torres"
nspy = spy.split(" ").reverse.join(" ")
newvowl_nspy = nspy.tr('aeiou', 'eioua')
p newvowl_nspy
newconst_nspy = newvowl_nspy.tr('bcdfghjklmnpqrstvwxyz', 'cdfghjklmnpqrstvwxyzb')
p newconst_nspy
newname = newconst_nspy.tr('BCDFGHJKLMNPQRSTVWXYZ', 'dCDFGHJKLMNPQRSTVWXYZB')
p newname

#ui for anyname:
puts "Welcome to C.A.O.S., please enter your name:"
spy = gets.chomp
nspy = spy.split(" ").reverse.join(" ")
newvowl_nspy = nspy.tr('aeiou', 'eioua')
newconst_nspy = newvowl_nspy.tr('bcdfghjklmnpqrstvwxyz', 'cdfghjklmnpqrstvwxyzb')
newname = newconst_nspy.tr('BCDFGHJKLMNPQRSTVWXYZ', 'dCDFGHJKLMNPQRSTVWXYZB')
puts "Here is your new name: #{newname}."
	end