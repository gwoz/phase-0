#population density is number of people per square mile as of 2012
#this data is updated every year with estimates from a 10 year census


require_relative 'state_data'

# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
# Requires another file that has data relating to this files code.
# require_relative can be used for a file that is located in the same directory as the file that is calling for it.
# require can be used for gems or other libraries.

class VirusPredictor
# Stating how the object instances will be instantiated. We will provide 3 arguments at that time and they will be set as instance variables.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
# Run our predictions that are further defined in the methods below
  def virus_effects
    # predicted_deaths(@population_density, @population, @state)
    # speed_of_spread(@population_density, @state)
    predicted_deaths
    speed_of_spread
  end

  private
# Based on the density and population for a state, we're determining the number of deaths then printing out the prediction
  def predicted_deaths
    # predicted deaths is solely based on population density
#     Use case/when for determining number of deaths
    case @population_density
    when @population_density >= 200; number_of_deaths = (@population * 0.4).floor
    when @population_density >= 150; number_of_deaths = (@population * 0.3).floor
    when @population_density >= 100; number_of_deaths = (@population * 0.2).floor
    when @population_density >= 50; number_of_deaths = (@population * 0.1).floor
    else number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
# Based on the population density, this predicts the number of months in which the disease will spread across the state
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    case 
    when @population_density >= 200; speed += 0.5
    when @population_density >= 150; speed += 1 
    when @population_density >= 100; speed += 1.5
    when @population_density >= 50; speed += 2 
    else speed += 2.5 end

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

STATE_DATA.each_key do |state|
  VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population]).virus_effects
end

#=======================================================================
# Reflection Section
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
ANS: The first hash is using the "hash rocket" method and the nested hashes for population density and 
population are using the JSON method. In the JSON valid method Ruby creates symbols for keys. These symbols
are more resource efficient and are encouraged in Ruby.

What does require_relative do? How is it different from require?
ANS: Require_relative is looking for a file in the same directory as the ruby file that uses it. It's 
different from require because require is not constrained to the same directory and can look outside of it.
Require is useful for things like gems or other libraries that you may be importing to run your programs.

What are some ways to iterate through a hash?
ANS: You can use each_key, each_pair, each_value to iterate through a hash.

When refactoring virus_effects, what stood out to you about the variables, if anything?
ANS: The variables were not named well and could be confusing. If you saw population by itself you might not 
know that it's the total population because it could also be the population density.

What concept did you most solidify in this challenge?
ANS: I most solidifed iterating through hashes. I sometimes struggle to come up with an initial approach and get 
bogged down with the multiple ways in which something could be done. I feel like the most efficient way to iterate
is now becoming more readily apparent.
=end
