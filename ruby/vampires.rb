#WHR
total = 0
full_name = ""
puts "How many employees will you process"
	count = gets.chomp.to_i

while total < count


# tried a cases and methods, still not working...will get some help

# 	def true_age(age)
# 		if age == (2017 - birthyear.to_i) || (2016 - birthyear.to_i)
# 		puts "His birthyear is true"	
# 		else
# 		puts "His birthyear is false"
# 	end
# end

puts "What is your name"
full_name = gets.chomp

puts "How old are you?"
true_age(gets.chomp)

puts "What year were you born?"
birthyear = gets.chomp

puts "Our company cafeteria serves garlic bread. Should we order some for you?(y/n)"
eatsgbread = gets.chomp

puts "Would you like to enroll in the company's health insurance?(y/n)"
ins = gets.chomp


# If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
#If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
#If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
#Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. 
#In that case, you should print “Definitely a vampire.”
#Otherwise, print “Results inconclusive.”


if (age = ((2017 - birthyear.to_i) || (2016 - birthyear.to_i)) && (eatsgbread == "y" || ins == "y"))
	puts "Probably not a vampire."
elsif (age != ((2017 - birthyear.to_i) || (2016 - birthyear.to_i)) && (eatsgbread == "n" && ins == "n"))
	puts "Almost certainly a vampire."
elsif (age != ((2017 - birthyear.to_i) || (2016 - birthyear.to_i)) && (eatsgbread == "n" || ins == "n"))
	puts "Probably a vampire."
elsif full_name == ("Drake Cula" || "Tu Fang")
  	puts "Definitely a vampire."
else
	puts "Results inconclusive."
end
count -= 1
end