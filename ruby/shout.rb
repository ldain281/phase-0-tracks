#release1 simple module, note self keyword necessary for module
module Shout
# 	def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end

# 	def self.yelling_happily(words)
# 		words + "!!!!" + " :)"
# 	end
# end
#module driver code
# puts Shout.yell_angrily("I am sooo angry")
# puts Shout.yelling_happily("Whoo, hooo")

#release2 Mixin, instance methods added two classes, note "include Shout", no s"elf" keyword
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
#driver code instantiates classes, calling the two module methods on each instance
cabdriver = Cabdriver.new
cabdriver.cuss("mighty fine car you have")

minivan = Minivan.new
minivan.cuss("*@$@*$$X!!!")