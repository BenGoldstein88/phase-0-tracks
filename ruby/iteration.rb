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


# Begin release 2

nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
hash = {jim: 5, john: 10, joe: 20}

# 1
#Get numbers bigger than 3 (Remove all numbers smaller than 3)
new_nums = []

nums.each do |i|
  if i > 3
    new_nums << i
  end
end

puts new_nums

#Delete anyone who is under 10 years old
puts hash
hash.each do |name, age|
  if hash[name] < 10
    hash.delete(name)
  end
end
puts hash

# 2
nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
hash = {jim: 5, john: 10, joe: 20}
new_nums = []
new_hash = {}

# Keep numbers greater than 4
puts new_nums

nums.each do |i|
  if i > 4
    new_nums << i
  end
end

puts new_nums

# Keep people 10 or older
puts hash
puts new_hash
hash.each do |name, age|
  if hash[name] >= 10
    new_hash[name] = age
  end
end
puts hash
puts new_hash


# 3
nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
hash = {jim: 5, john: 10, joe: 20}
new_nums = []
new_hash = {}

# Keep numbers less than 6
puts new_nums
nums.each do |i|
  if i < 6
    new_nums << i
  end
end
puts new_nums


# Keep people less younger than 15
puts hash
puts new_hash

hash.each do |name, age|
  if hash[name] < 15
    new_hash[name] = age
  end
end
puts hash
puts new_hash

# 4

# Didn't use block. Will come back to this one. But removes the last value until the length is less than 6.
puts nums

until nums.length < 6
  nums.pop
end

puts nums

# removes kids younger than 10
puts hash
hash.delete_if{|name, age| age < 10}
puts hash






