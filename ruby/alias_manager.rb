# Method takes string. Splits string into array. Use dummy variable to swap first and last value of new array. Compare each letter in new array to array 'aeiou' and if there's a match, set it equal to the proceeding index in aeiou (excepting for u, or something modulo would work). Same principle with consonants.
def is_a_vowel(char)
  vowels = ['a', 'e', 'i', 'o', 'u']
  index = 0
  isVowel = false
  while index < vowels.length
    if char == vowels[index]
      isVowel = true
    end
    index = index + 1

  end
return isVowel

end

def code_name(name)
  realname = name
  realname.downcase!
      # swap first and last name
    realname = realname.split(' ')
    swap = realname[0]
    realname[0] = realname.last
    realname[realname.length-1] = swap
    realname = realname.join(' ')
    # swap letters
    realname = realname.split('')

    newname = []
    vowels = ['a', 'e', 'i', 'o', 'u']
    consonants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l','m', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z']
  # for each letter
  realname.each do |letter|
  if letter == ' '
    newname << ' '
  else
    # if not a vowel, determine which consonant and shift it
    if is_a_vowel(letter) == false
      if letter == 'z'
        newname << 'b'
      else
        index = 0
        while index < consonants.length
          if letter == consonants[index]
            newname << consonants[index+1]
          end
          index = index + 1
        end
      end
    else
      #if a vowel, determine which one and shift it
      if letter == 'u'
        newname << a
      else
        index = 0
        while index < vowels.length
          if letter == vowels[index]
            newname << vowels[index+1]
          end
          index = index + 1
        end
      end
    end
  end
  end # block
  newname = newname.join('')
  # stolen block to capitalize first letter in each word/name rather than just first name
  newname = newname.split(/ |\_/).map(&:capitalize).join(" ")
  puts newname
  return newname
end # method

# initialize database and loop to prompt user for names and store them
database = {}
done = false
puts "Enter name, or type 'quit' to exit: "
input = gets.chomp
while done == false
  if input == 'quit'
    done = true
    puts "Thanks! Have a nice day!"
  else
    output = code_name(input)
    database[input] = output
    puts "Enter name, or type 'quit' to exit: "
    input = gets.chomp
  end
end

#outputs realname and codename
database.each do |name, code|
  name = name.split(/ |\_/).map(&:capitalize).join(" ")
  puts "#{code}'s real name is actually #{name}."
end