def encrypt(message)
  new_message = ""
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  counter = 0

  while counter < message.length
    if alphabet.index(message[counter]) == 25
      new_message += alphabet[0]
    else
      new_message += message[counter].next
    end
    
  counter += 1
  end

  new_message
end


def decrypt(message)
  new_message = ""
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  counter = 0

  while counter < message.length
    if alphabet.index(message[counter]) == 0
      new_message += alphabet[25]
    else
      new_message += alphabet[alphabet.index(message[counter]) - 1]
    end

  counter += 1
  end

  new_message
end

puts "What is your message?"
my_message = gets.strip

# puts "Your encrypted message is #{encrypt(my_message)}"
# puts "Your decrypted message is #{decrypt(encrypt(my_message))}"

puts "Would you like to decrypt or encrypt a password?"

my_choice = gets.strip

if my_choice = "decrypt"
	puts "Your decrypted message is #{decrypt(my_message))}"
elsif my_choice = "encrypt"
	puts "Your encrypted message is #{encrypt(my_message)}"
else 
	puts "I'm sorry, I didn't catch that. Would you like to decrypt or encrypt a password?"
end
