class Santa
age = 0

	def initialize(gender, ethnicity)
		p "iniitializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end
#age r
	def celebrate_birthday(age)
		@age = age + 1
	end
	def get_mad_at(name)
		reindeer_ranking
	end
end
santa = Santa.new("male", "Asian")
santa.speak
santa.eat_milk_and_cookies("breakfast bar")

santas = []
genders_ex = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicity_ex = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
genders_ex.length.times do |i|
	santas << Santa.new(genders_ex[i], ethnicity_ex[i])
end
p santas