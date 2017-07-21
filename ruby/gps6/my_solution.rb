# Virus Predictor

# I worked on this challenge [by myself, with: Sara ].
# We spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative
# require -- paths the files
# require_relative -- gives a mapped out path when the computer may not 
# know where the file is
require_relative 'state_data'

class VirusPredictor

# stores and states the instance variables upon initializion
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
# run the two following methods, predicted_deaths and speed_of_spread
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

 private
# checks the population densitity given as a parameter, and population,
# and creates a variable for number of deaths based on pop. density, 
# print out how many deaths a state will have in outbreak
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      death_number = 0.4
    elsif @population_density >= 150
      death_number = 0.3
    elsif @population_density >= 100
      death_number = 0.2
    elsif @population_density >= 50
      death_number = 0.1
    else
      death_number = 0.05
    end

 number_of_deaths = (@population * death_number).floor

   print "#{@state} will lose #{number_of_deaths} people in this outbreak"

 end

# takes population density and state, checks the number for density 
# against speed of spread, prints out speed that outbreak will spread
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

   if @population_density >= 200
      speed_number = 0.5
    elsif @population_density >= 150
      speed_number = 1
    elsif @population_density >= 100
      speed_number = 1.5
    elsif @population_density >= 50
      speed_number = 2
    else
      speed_number = 2.5
    end

   speed = speed + speed_number

   puts " and will spread across the state in #{speed} months.\n\n"

 end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

# want to loop through every single state in STATE_DATA, to print out 
# each initialized state information
# need: state name, pop. density, and popultaion
# will have to call virus effects as well on each state
STATE_DATA.each do |state_name, state_info|
  state = VirusPredictor.new(state_name, state_info[:population_density], state_info[:population])
  state.virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section