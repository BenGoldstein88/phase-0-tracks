=begin
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
=end

module Shout

  def yell_angrily(words)
    words + "!!!" + " :("
  end


  def yell_happily(words)
    words + "!!"  + " :)"
  end

end

class Boy
  include Shout
end

class Girl
  include Shout
end

boy = Boy.new
puts boy.yell_happily("Hey")
puts boy.yell_angrily("What")

girl = Girl.new
puts boy.yell_happily("Bonjour")
puts girl.yell_angrily("Quoi")
