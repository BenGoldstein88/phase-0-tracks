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



end

tod = Puppy.new
tod.fetch('bone')
tod.speak(5)
tod.roll_over
tod.dog_years(5)
tod.play_dead
