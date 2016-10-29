# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Require_relative is when you're linking to a file in the same directory.
#
require_relative 'state_data'

class VirusPredictor


# Passing in the values from state_data.rb into the initialize method and assigning insance variables to those values.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# Calling two other instance methods within class. Passing in the instance variables we assigned in the previous method.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

# This is a private method. Estimates how many people will die in a given state during a virus outbreak. Takes 3 arguments.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# This is a private method. Estimates how fast the virus will spread. Takes two arguments.
  def speed_of_spread #in months
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

STATE_DATA.each do |state, population|
  state = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
  state.virus_effects
end



#=======================================================================
# Reflection Section

# One syntax denotes the keys with a colon, while the other denotes them with a rocket.
# Require_relative is when you're linking to a file in the same directory. Require can be linked to anywhere.
# Different ways to iterate through a hash are: '.each' & '.map'.
# It surprised me that we didnt need arguments at all.
# The concept I most solidified in this session was: accessibility of instance variables.






