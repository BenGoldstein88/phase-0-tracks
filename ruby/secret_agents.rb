=begin
encrypt (string)
for each letter in string
  .next the letter and save result
end
=end

def encrypt(password)
  index = 0
  while index < password.length
    password[index] = password[index].next
    index += 1
  end
  puts password


end

def decrypt(password)
  index = 0
  while index < password.length
    password[index] = password[index].prev
    index += 1
  end
  puts password


end

=begin
decrypt (string)
for each letter in string
  .previous the letter and save result
end
=end