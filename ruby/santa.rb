class Santa
attr_reader :age, :ethnicity,
attr_accessor :gender
	def speak
	puts "Ho, ho, ho! Haaaapy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
	puts "That was a good #{cookie_type}!"
	end

	def initialize(gender, ethnicity)
	puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@age = 0
	end
	def reindeer_ranking
		@reindeers = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end
	# def name
	# 	@name
	# end
	def celebrate_birthday(age)
		@age = @age + 1
	end

	def get_mad_at(reindeer_name)
	@reindeers	
	# 	@reindeers.each.delete {|name|}
	# 	@reindeers.map.last {|name|}

	end

end
#relase 0
st_nick = Santa.new("female", "Native American")
st_nick.speak
st_nick.eat_milk_and_cookies("sugar cookie")
st_nick.celebrate_birthday(0)
st_nick.reindeer_ranking
st_nick.get_mad_at("Vixen")
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end


#felease 4 santacom
# Use our array of example genders and an array of example ethnicities
# Set your new Santa's age to a random number between 0 and 140.
# No need to store your Santas in a data structure, but your program should print out the attributes of each Santa using the instance methods that give you access to that data.