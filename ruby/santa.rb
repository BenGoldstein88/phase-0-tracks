class Santa
  attr_reader :reindeer_ranking
  attr_accessor :gender, :ethnicity, :age

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(type)
    puts "That was a good #{type}!"
  end

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @age = 0
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end

  def speak
    puts "I am a #{@gender} #{@ethnicity}, am #{@age} years old, and prefer #{@reindeer_ranking}."
  end

  def celebrate_birthday
    @age = @age + 1
  end

  def get_mad_at(reindeer)
    @reindeer_ranking.delete(reindeer)
    @reindeer_ranking << reindeer
  end



end

def santa_machine
  example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
  example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

  300.times do
    john = Santa.new(example_genders.sample, example_ethnicities.sample)
    john.age = rand(140)
    john_stuff = [john.gender, john.ethnicity, john.age]
    puts john_stuff
  end


end

santa_machine


=begin
bill = Santa.new("female", "asian")
puts bill.gender
puts bill.ethnicity
puts bill.reindeer_ranking
bill.get_mad_at("Rudolph")
puts bill.reindeer_ranking
=end





=begin
santas = []
genders = ["male", "female", "trans", "hermaphroditic", "ambiguous", "other"]
ethnicities = ["asian", "other asian", "southeast asian", "russian asian", "former soviet bloc asian", "secret asian"]

genders.length.times do |i|
  santas << Santa.new(genders[i], ethnicities[i])
end

puts santas
=end
