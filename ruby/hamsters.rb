puts "What is your hamster name?"
name = gets.chomp

puts "How loud is your hamster? (1-10)"
volume = gets.to_f

puts "What color is your hamster?"
fur = gets.chomp

puts "Is your hamster a good candidate for adoption?"
adoption = gets.chomp

puts "How old is your hamster?"
age = gets.chomp
	if age == ""
		age = nil	
	else 
		age = age
	end

puts "Your hamster's name is #{name}."
puts "Your hamster is this loud: #{volume}."
puts "Your hamster has #{fur} fur."
puts "#{adoption} your hamster is a good candidate."
puts "Your hamster is #{age} old."
