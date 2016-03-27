puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp
age.to_i

puts "What year were you born?"
dob = gets.chomp
dob.to_i

puts "Our company cafeteria serves garlic. Should we order some for you? (y/n)"
garlic = gets.chomp
if garlic == "y"
  garlic = true
else
  garlic = false
end


puts "Would you like to enroll in the company's health insurance? (y/n)"

health = gets.chomp
if health == "y"
  health = true
else
  health = false
end