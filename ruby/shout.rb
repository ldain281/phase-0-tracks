module Shout
# 	def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end

# 	def self.yelling_happily(words)
# 		words + "!!!!" + " :)"
# 	end
# end

# puts Shout.yell_angrily("I am sooo angry")
# puts Shout.yelling_happily("Whoo, hooo")
	def cuss(words)
		puts "Get the #{words} out of my way!"
	end
end

	class Cabdriver
		include Shout
	end

	class Minivan
		include Shout
	end

cabdriver = Cabdriver.new
cabdriver.cuss("mighty fine car you have")

minivan = Minivan.new
minivan.cuss("*@$@*$$X!!!")