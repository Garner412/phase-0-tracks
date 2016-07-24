=begin
define the method and the intake parameter
break the string by spaces
swap the two new parts
swap vowels to the next one
swap consonant to the next one
print the name back to the console 	
=end
full_name = ''
spy_names = []

def name_swap(full_name)
vowels = %w{a e i o u}
consonants = %w{b c d f g h j k l m n p q r s t v w x y z}
	full_name.downcase!
	split_name = full_name.split(' ')
	split_name[0], split_name[1] = split_name[1], split_name[0]
	
	last_name = split_name[0].split('')
	first_name = split_name[1].split('')
	
	first_name.map! do |letters|
		name_scrambler(letters)
	end
	
	last_name.map! do |letters|
		name_scrambler(letters)
	end
	
	secret_name = last_name.join('').capitalize! + " " + first_name.join('').capitalize!

end


def name_scrambler(letter)
  vowels = %w{a e i o u}
  consonants = %w{b c d f g h j k l m n p q r s t v w x y z}
	if vowels.include?(letter)
	  if letter == 'u'
	  	vowels[0]
	  else
	  	vowels[vowels.index(letter) + 1]
	  end
	elsif consonants.include?(letter)
	  if letter == 'z'
	  	consonants[0]
	  else
	  	consonants[consonants.index(letter) + 1]
	  end
	end
end


loop do
  puts "What is your name, spy? (Type 'quit' to exit)"
  full_name = gets.chomp
  if full_name == "quit"
    puts "Exiting program"
    break
  else
    puts "Your field name is #{name_swap(full_name)}"
    spy_names << [full_name, name_swap(full_name)]
  end
end

spy_names.each do |name|
  puts "#{name[1]} is actually #{name[0]}"
end
