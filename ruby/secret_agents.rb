=begin
encrypt (string)
for each letter in string
  .next the letter and save result
end
=end

def encrypt(password)
  index = 0
  while index < password.length
    if password[index] == 'z'
      password[index] = 'a'
      index += 1
    elsif password[index] == " "
      index += 1
    else
      password[index] = password[index].next
      index += 1
    end
  end
  puts password
  return password


end

def prev(char)
  index = 0
  lower_case = "abcdefghijklmnopqrstuvwxyz"
  while index < lower_case.length
    if char.to_s == lower_case[index].to_s
      char = lower_case[index-1].to_s
      return char
    end
    index = index + 1

  end

end

def decrypt(password)
  index = 0
  while index < password.length
    letter = password[index]
    if letter == " "
      index += 1
    else
    password[index] = prev(letter).to_s
    index = index + 1
  end
  end
 puts password
return password


end

encrypt("abc")
encrypt("zed")
decrypt("bcd")
decrypt("afe")
decrypt(encrypt("The duck flies at midnight".downcase))

# Had to downcase it to account for caps. decrypt is using the return value of encrypt (which is a string) as its argument. It expects a string, so all's well.

=begin
decrypt (string)
for each letter in string
  .previous the letter and save result
end
=end