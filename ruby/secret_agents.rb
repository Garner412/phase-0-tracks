# encrypt - moves one letter forward
	# determine input length for loop number
	# search alphabet string for index.
	# add 1 to index
	# return that letter(value)

# decrypt - moves one letter backwards
	# search alphabet string for index.
	# subtract 1 to index
	# return that letter(value)

def encrypt(input)
	new_value = 0
	new_password = ""
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	times_run = 0

	until times_run == input.length
		new_value = alphabet.index(input[times_run]) + 1
			if new_value > 25
				new_value = new_value - 26
			end
		new_password += alphabet[new_value]
		times_run += 1

	end
	puts "Your encrypted password is #{new_password}."
end


def decrypt(input)
	new_value = 0
	new_password = ""
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	times_run = 0

	until times_run == input.length
		new_value = alphabet.index(input[times_run]) - 1
			if new_value < 0
				new_value = new_value + 26
			end
		new_password += alphabet[new_value]
		times_run += 1

	end
	puts "Your decrypted password is #{new_password}."
end


=begin
encrypt("abc")
encrypt("zed")
decrypt("bcd")
decrypt("afe")

decrypt(encrypt("swordfish"))
#unfortunately this doesn't work. I believe it's because the password that is the output for the encrypt is not being used as the input for the decrypt.
=end

puts "Agent, would you like to encrypt or decrypt a password?"
decision = gets.chomp.downcase

if decision == "encrypt"
	puts "What password would you like to encrypt?"
	password = gets.chomp.downcase
	encrypt(password)
elsif decision == "decrypt"
	puts "What password would you like to encrypt?"
	password = gets.chomp.downcase
	decrypt(password)
else 
	puts "I did not understand."
end
