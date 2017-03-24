#release 2 mixins
#write flight module above class declarations with altitude as paramater

module Flight
	def take_off(altitude)
		puts "Taking off and ascending until reaching #{altitude} feet."
	end
end
	#declare two flying classes and add mudule to them
class Bird
	include Flight
end

class Plane
	include Flight
end

	bird = Bird.new
	bird.take_off(800)

	plane = Plane.new
	plane.take_off(30000)

