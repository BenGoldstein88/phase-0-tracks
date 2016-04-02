def say_goodbye
  name1 = "dumb guy"
  name2 = "the other one"
  puts "Adios!"
  yield(name1, name2)
end

say_goodbye { |name1, name2| puts "See ya later #{name1} and #{name2}!"}

###

frogs = ["jim", "johnny", "joe", "jason"]
ages = {jim: 2, johnny: 4, joe: 1, jason: 3}

frogs.each do |name|
puts "This frog is #{name}."
end

ages.each do |name, age|
puts "#{name} is #{age} years old."
end

###

puts "Frogs pre-map is: #{frogs}"
frogs.map do |name|
name = name + " Hammersmith"
puts "This frog is #{name}."
end
puts "Frogs post-map is: #{frogs}."


puts "Frogs pre-map! is: #{frogs}"
frogs.map! do |name|
  name + " Hammersmith"
end
puts "Frogs post-map! is: #{frogs}."

###

ages.map do |name, age|
  puts "#{name} is now #{age+5} years old."
end

puts ages









