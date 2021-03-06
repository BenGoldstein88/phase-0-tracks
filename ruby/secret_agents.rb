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


puts "Type '1' to encrypt or '2' to decrypt"
decision = gets.chomp
decision = decision.to_i
if decision == 1
  puts "Password to encrypt: "
  password_e = gets.chomp
  password_e_new = encrypt(password_e)
  puts password_e_new

elsif decision == 2
  puts "Password to decrypt: "
  password_d = gets.chomp
  password_d_new = decrypt(password_d)
  puts password_d_new

else
  puts "Don't screw with me here."
end

=begin

encrypt("abc")
encrypt("zed")
decrypt("bcd")
decrypt("afe")
decrypt(encrypt("The duck flies at midnight".downcase))

=end

# Had to downcase it to account for caps. decrypt is using the return value of encrypt (which is a string) as its argument. It expects a string, so all's well.

=begin
decrypt (string)
for each letter in string
  .previous the letter and save result
end
=end