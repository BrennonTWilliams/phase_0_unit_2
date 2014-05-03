# U2.W5: Virus Predictor

# I worked on this challenge by myself

# EXPLANATION OF require_relative
# require_relative links this file to another ruby file. In this case
# the other ruby file contains state data that would take up a huge 
# amount of space if included in this file

# EXPLANATION OF state_data
# state_data contains hashes where each key has multiple associated
# values, such as population_density and regional_spread

require_relative 'state_data'

class VirusPredictor

  # creates all of the variables we will be using in this class
  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end

  # Returns how many deaths and what speed the virus moves at based upon initialized variables
  def virus_effects  #HINT: instance variables are accessable by all the methods in this class, so no need to pass them here
    number_of_deaths = predicted_deaths
    speed = speed_of_spread

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
    puts " and will spread across the state in #{speed} months.\n\n"
  end

  private  # private means the method can only be called without an explicit receiver 

  # Calculates predicted deaths based upon initialized variables
  def predicted_deaths
    death_risk = case @population_density
      when 150..200
        0.3
      when 100..150
        0.2
      when 50..100
        0.1
      when 0..50 
        0.05
      else
        0.4
      end
    death_risk * @population

  end

  # Calcuates spread speed for the virus based upon initialized variables
  def speed_of_spread #in months
    speed = 0.0

    speed = speed + case @population_density
      when 150..200
        1
      when 100..150
        1.5
      when 50..100
        2
      when 0..50 
        2.5
      else
        0.5
      end
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, variable|
  all_states = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population], STATE_DATA[state][:region], STATE_DATA[state][:regional_spread]) 
  all_states.virus_effects
end

#SUPPLIED DRIVER CODE
# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread]) 
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread]) 
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread]) 
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread]) 
# alaska.virus_effects