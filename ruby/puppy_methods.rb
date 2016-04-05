class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(i)
    x = 0
    while x < i
      puts "Woof!"
      i = i-1
    end
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(human_years)
    dog_age = human_years*7
    puts dog_age
    return dog_age

  end

  def play_dead
    puts "*plays dead*"
  end

  def initialize
    puts "Initializing new puppy instance..."
  end



end

# monster class
class Monster
# gibberish methods
  def horn(int)
    puts "It sprouted #{int} horns!"
  end

  def grow(int)
    puts "It grew #{int} inches!"
  end

  def roar
    puts "ROARRRRRRRRRR!"
  end


end

tod = Puppy.new
tod.fetch('bone')
tod.speak(5)
tod.roll_over
tod.dog_years(5)
tod.play_dead

#loop to init. 50 monsters and store in array
x = 0
monster_database = []
while x < 50
  new = Monster.new
  monster_database << new
  x = x+1
end

#loop to print database with method calls
monster_database.each do |monster|
  monster.horn(3)
  monster.grow(20)
  monster.roar
end