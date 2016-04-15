class VirusPredictor

#creates a new instance of VirusPredictor, sets instance variables for the 3 arguments
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

#calls predicted deaths and speed of spread using the methods below


  def virus_effects
    predicted_deaths
    speed_of_spread
  end


#private can only be called internally and not from outside the class
private


#predicts the deaths based on population density using the if,elsif,else statements. And then prints a statement using interpolation
#describing predicted deaths
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

#calculates how fast the virus will spread based on population_density. And then prints
#a statement describing the speed of spread
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

STATE_DATA.each do |state, info|


  state_virus = VirusPredictor.new(state, info[:population_density], info[:population]).virus_effects



end




#=======================================================================
# Reflection Section

=begin
    First is the hash rocket (<key> => <value>), next is the reverse symbol ( symbol: <value>)

    require_relative lets you access files on a relative path to yours. Require requires you to input the full path name.

    Best way to iterate through a hash is .each, but you could use a nested for loop and i'm sure there are other internal methods.

    In refactoring, the instance variables stood out as being accessible without being passed as internal parameters to class methods.

    Instance variables and their scope was solidified pretty well.






=end