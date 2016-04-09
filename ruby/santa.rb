class Santa
  attr_reader :reindeer_ranking
  attr_accessor :gender, :ethnicity

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

bill = Santa.new("female", "asian")
puts bill.gender
puts bill.ethnicity
puts bill.reindeer_ranking
bill.get_mad_at("Rudolph")
puts bill.reindeer_ranking






=begin
santas = []
genders = ["male", "female", "trans", "hermaphroditic", "ambiguous", "other"]
ethnicities = ["asian", "other asian", "southeast asian", "russian asian", "former soviet bloc asian", "secret asian"]

genders.length.times do |i|
  santas << Santa.new(genders[i], ethnicities[i])
end

puts santas
=end
