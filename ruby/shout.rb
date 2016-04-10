module Shout

  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

# naming a bit off, but its what the assignment says
  def self.yelling_happily(words)
    words + "!!"  + " :)"
  end


end

puts Shout.yell_angrily("Hey")

puts Shout.yell_angrily("Hello")