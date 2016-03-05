# Virus Predictor

# I worked on this challenge with Joshua Lugo.
# We spent 1.5 hours on this challenge.

# EXPLANATION OF require_relative
# require_relative loads a file from the same directory allowing this file to access the data from another file
# differs from require in notation because it does not require a full path or URL and rather loads from the directory environment
require_relative 'state_data'

class VirusPredictor
# Initialize instance variables that will be used throughout the class
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
# Combines and calls 2 instance methods defined below in private section
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
# Uses population_density as flow control in an if statement to determine the prediction of number_of_deaths.  predicted_deaths is dependent on what the population begins as.
  def predicted_deaths
    # predicted deaths is solely based on population density
    number_of_deaths =
    if @population_density >= 200
      (@population * 0.4)
    elsif @population_density >= 150
      (@population * 0.3)
    elsif @population_density >= 100
      (@population * 0.2)
    elsif @population_density >= 50
      (@population * 0.1)
    else
      (@population * 0.05)
    end

    print "#{@state} will lose #{number_of_deaths.floor} people in this outbreak"

  end


# Checks in an if statement by population_density and returns a month value (integer) based on a computation.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    speed +=
    if @population_density >= 200
        0.5
    elsif @population_density >= 150
        1
    elsif @population_density >= 100
        1.5
    elsif @population_density >= 50
        2
    else
        2.5
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

STATE_DATA.each do |key, value|
  VirusPredictor.new(key, value[:population_density], value[:population]).virus_effects
end

#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
# The giant hash is assigned to a constant with literal hash notation.  The nested hashes have symbols for keys and are assigned to a string.
# What does require_relative do? How is it different from require?
# require_relative grabs and loads data from a file within the directory that your current file is in.  It is different from require in that it does not need the full path or full URL to load data.
# What are some ways to iterate through a hash?
# Some ways to iterate through a hash are .each do |key, value|, or other iterating methods that apply to hashes.
# When refactoring virus_effects, what stood out to you about the variables, if anything?
# When refactoring we saw that the arguments passed in the method were not used throughout the method.  Instead, the instance variables were used and this meant that we could get rid of the arguments altogether.
# What concept did you most solidify in this challenge?
# The concept of constants, the require_relative method, and iterating over hashes were all solidified throughout the challenge.