class Santa
	#release3 refactor getters and setters
		attr_reader :age, :ethnicity
		attr_accessor :gender

	def speak
	puts "Ho, ho, ho! Haaaapy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
	puts "That was a good #{cookie_type} cookie!"
	end
#release1 initialize attributes and states
	def initialize(gender, ethnicity, age)
	puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@age = age
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end
# release 2: change attribute with a method
	def celebrate_birthday(age)
		@age = age + 1
		p @age
	end

	def get_mad_at(name, rank)	
		@reindeer_ranking.push(name)
		@reindeer_ranking.delete_at(rank)
		p @reindeer_ranking
	end
end

#release 0
st_nick = Santa.new("male", "Latino", 0)
st_nick.speak
st_nick.eat_milk_and_cookies("peanut butter")
#release 1 (and Release4)
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
#release 1# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end
# santas[2]

#release2
st_nick.celebrate_birthday(0)
st_nick.get_mad_at("Vixen", 4)

#release 4 santacom
# Use our array of example genders and an array of example ethnicities
# Set your new Santa's age to a random number between 0 and 140.
# No need to store your Santas in a data structure, but your program should print out the attributes of each Santa using the instance methods that give you access to that data.
#loop to create 100 santas with random gender, ethnicity and age
  100.times do
    puts "Creating new Santa"
    santas << Santa.new(example_genders.sample, example_ethnicities.sample, rand(122))
end
p santas

