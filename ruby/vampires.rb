#Release 3: Process Multiple Employees
puts "How many employees will you process"
	count = gets.chomp.to_i
# employee age and year of birth line up mathematically
def applicant_age(age, birthyear)
   return birthyear == (2017 - age) || birthyear == (2016 - age)
end

while count > 0 do
# Release 1: Interview with the Vampire
puts "What is your name?"
name = gets.chomp
puts "How old are you?"
age = gets.chomp.to_i
puts "What year were you born?"
birthyear = gets.chomp.to_i
puts "Our company cafeteria serves garlic bread. Should we order some for you (y/n)?"
garlic_bread = gets.chomp
puts "Would you like to enroll in the company's health insurance?(y/n)"
ins = gets.chomp
#Release 4: Check for Suspicious Allergies
    allergy_list = []
    allergy = ""
    
  until allergy == 'done' do
    puts "List your allergies. Type 'done' when complete."
        allergy = gets.chomp
        if allergy == "sunshine"
        sunshine = true
            break
        end
        allergy_list << allergy
    end

true_age = applicant_age(age, birthyear)
garlic_bread = garlic_bread == 'y'
ins = ins == 'y'

  if name == "Drake Cula" || name == "Tu Fang"
  	puts "Definitly a vampire"
  elsif sunshine
  puts "Probably a vampire"
  elsif true_age && (garlic_bread || ins)
	puts "Probably not a vampire"
  elsif !true_age && (garlic_bread || ins)
	puts "Probably a vampire"
	elsif !true_age && (!garlic_bread && !ins)
	puts "Almost certainly a vampire"
	else 
	  puts "Results inconclusive"
end
count -= 1
end
#Release 5: Plot Twist
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."