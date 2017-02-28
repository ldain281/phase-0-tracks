module Shout
# 	def self.yell_angrily(words)
# 		p words + "!!!" + " :("
# 	end

# 	def self.yelling_happily(words)
# 		p words + "!!!" + " :)"
# 	end
# end

# Shout.yell_angrily("I am sooo angry")
# Shout.yelling_happily("Whoo, hooo")
	def cuss(words)
	p "Get the #{words} out of my way."
	end
end

class Cabdriver
	include Shout
end

class Minivan
	include Shout
	end

cabdriver = Cabdriver.new
cabdriver.cuss("fine car you have")

minivan = Minivan.new
minivan.cuss("*@$@*$$X!!!")