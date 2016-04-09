=begin
  keyboard class

  num_keys
  make
  model
  year
  num_sounds


=end

class Keyboard
  attr_accessor :num_keys, :make, :model, :year, :num_sounds

  def initialize(num_keys, make, model, year, num_sounds)
    @num_keys = num_keys
    @make = make
    @model = model
    @year = year
    @num_sounds = num_sounds
  end

  def describe
    puts "#{@num_keys} key #{@make} #{@model}, #{@year}, #{@num_sounds} available sounds."
  end


end

def create_keyboard
  keyboards = []
  done = false


  while done == false
    puts "Welcome to the keyboard creator! Type 'done' to stop creating keyboards. Otherwise, enter the make of the keyboard you wish to create: "

    input = gets.chomp
    if input == 'done'
      done = true
      i = 0
      while i < keyboards.length
        keyboards[i].describe
        i = i + 1
      end
    else
      make = input.to_s
      puts "Enter model: "
      model = gets.chomp.to_s
      puts "Enter year: "
      year = gets.chomp.to_i
      puts "Enter number of keys: "
      num_keys = gets.chomp.to_i
      puts "Enter number of available sounds: "
      num_sounds = gets.chomp.to_i

      bill = Keyboard.new(num_keys, make, model, year, num_sounds)

      keyboards << bill
    end

  end



end

create_keyboard