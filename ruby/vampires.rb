puts "How many employees will be processed?"
num_employees = gets.chomp
num_employees = num_employees.to_i

while num_employees != 0 do

  puts "What is your name?"
  name = gets.chomp


  puts "How old are you?"
  age = gets.chomp
  age = age.to_i


  puts "What year were you born?"
  dob = gets.chomp
  dob = dob.to_i


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

  puts "Please list any allergies, one at a time. Type 'done' when finished."
  allergy = gets.chomp

  while allergy != "done" do
    if allergy == "sunshine"
      allergy = "done"
      puts "Probably a vampire."
    else
      allergy = gets.chomp
    end
  end

  real_dob = 2016-age


  if name == "Drake Cula" || name == "Tu Fang"
    puts "Definitely a vampire."
  elsif real_dob == dob && (garlic && health)
    puts "Probably not a vampire."
  elsif real_dob != dob && ( !garlic || !health)
    puts "Probably a vampire."
  elsif real_dob != dob && ( !garlic && !health)
    puts "Almost certainly a vampire."
  else
    puts "Results inconclusive."
  end

  puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

  num_employees = num_employees - 1
end