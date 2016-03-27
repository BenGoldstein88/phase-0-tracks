puts "Name: "

name = gets.chomp

puts "Volume (1-10): "

volume = gets.chomp
volume.to_i

puts "Fur Color: "

color = gets.chomp

puts "Adoptable (y/n): "

adoptable = gets.chomp

if adoptable == "y"
  adoptable = true
else
  adoptable = false
end


puts "Age: "

age = nil
age = gets.chomp
age.to_i

puts "Name: " + name
puts "Volume: " + volume
puts "Fur Color: " + color
puts "Adoptable: #{adoptable}"
puts "Age: " + age
