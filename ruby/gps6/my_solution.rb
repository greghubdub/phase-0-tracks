# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative then "quotes" with the 
# other file you're getting data from, minus the .rb suffix

require_relative 'state_data'

class VirusPredictor
  
# sets up what happens with a new instance of the class, such as arguments, and what is
# in instance or a local variable
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
 
# runs the following 2 methods and returns their value
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

=begin
	
# takes population density of a state and works outs a death rate based on it
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
=end

  def predicted_deaths
  	#result = case value
  	number_of_deaths = case @population_density
  		when @population_density >= 200 then (@population * 0.4).floor
  		when (@population_density >= 150 && @population_density < 200) then (@population * 0.3).floor
  		when (@population_density >= 100 && @population_density < 150) then (@population * 0.2).floor
  		when (@population_density >= 50 && @population_density < 100) then (@population * 0.1).floor
  		else (@population * 0.05).floor
  	end
  	print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end

  def speed_of_spread
  	
  	speed = 0.0

  	case @population_density
    	when @population_density >= 200 then speed += 0.5
    	when (@population_density >= 150 && @population_density < 200) then speed += 1
    	when (@population_density >= 100 && @population_density < 150) then speed += 1.5
    	when (@population_density >= 50 && @population_density < 100) then speed += 2
    	else speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end


=begin
# takes population density of a state and works out how much time (in months) the infection
# will move across the whole state
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

=end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.keys.each do |state|
	current_state = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
	current_state.virus_effects
end

#=======================================================================
# Reflection Section