class Santa

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
	end

	def celebrate_birthday(age)
		@age = age + 1
	end
	def get_mad_at(reindeer_ranking)
		@get_mad_at = get_mad_at
	end
	def gender
		@gender
	end
	def age
		@age
	end
	def ethnicity
		@ethnicity
	end
end
st_nick = Santa.new("female", "Native American")
st_nick.speak
st_nick.eat_milk_and_cookies("sugar cookie")
reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
age = 0
santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")