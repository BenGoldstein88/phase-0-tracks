# Prompt user for info, add each piece of info to a hash under relevant/discrete key -- name address age num_children married

p "Welcome!"

client = {}

puts "Client Name: "

client[:name] = gets.chomp

puts "Address: "

client[:address] = gets.chomp

puts "Age: "
age = gets.chomp
age = age.to_i
client[:age] = age

puts "Number of Children: "

child = gets.chomp
child = child.to_i
client[:num_children] = child

puts "Married (y/n): "

mar = gets.chomp
if mar == "y"
  mar = true
else
  mar = false
end

client[:married] = mar

p client

# Prompt for change, exit if nothing, convert change to sym and prompt for new value elsewise.
puts "Would you like to change anything? Type 'name', 'address', 'age', 'num_children', or 'married' to make changes. Type 'done' to complete the form."

change = gets.chomp
if change == "done"
  p client
else
  change = change.to_sym
  puts "What is the new entry?"
  value = gets.chomp
  client[change] = value
  p client
end


