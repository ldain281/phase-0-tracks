  # Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative links a file(only) located within the same directory, or you can navigate to diff. directories
# require is more broad and can include other ruby files or gems or db's
require_relative 'state_data'

class VirusPredictor
#initialize class, takes in arguments of state, pop density and population and stores them as instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

#runs methods of predicted_deaths and speed_of_spread
  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

   private
# calculates predicted deaths by state based on population density and population (and rounds down)
  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density

    if @population_density >= 200
        x = 0.4
    elsif @population_density >= 150
      x = 0.3
    elsif @population_density >= 100
      x = 0.2
    elsif @population_density >= 50
      x = 0.1
    else
      x = 0.05
    end
    number_of_deaths = (@population * x).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
# calculates speed of disease spread based on pupulation density per state.
  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |state, popdata|
VirusPredictor.new(state, popdata[:population], popdata[:population_density]).virus_effects
end

#=======================================================================
# Reflection Section
#What are the differences between the two different hash syntaxes shown in the state_data file? [LD] the outer state syntax are strings keys while the embedded keys are symbols
#What does require_relative do [LD] allows acces to another rb file within the folder or shared directory.  How is it different from require? [LD] require is used for differenty file types or data sources.
# What are some ways to iterate through a hash? [LD] .each and .map
# When refactoring virus_effects, what stood out to you about the variables, if anything? [LD] repetition
#What concept did you most solidify in this challenge? [LD] refactoring: looking for repetition within the code
