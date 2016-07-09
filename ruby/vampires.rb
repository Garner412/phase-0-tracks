times_run = 0

puts "How many employees would you like to process?"
number_employees = gets.to_i

until times_run == number_employees
	puts "What is your name?"
	name = gets.chomp

	puts "What year were you born?"
	year = gets.chomp

	puts "Our company cafeteria serves garlic bread. Should we order some for you?"
	garlic = gets.chomp

	puts "Would you like to enroll in the company's health insurance?"
	insurance = gets.chomp 

	if name == "Drake Cula" || name == "Tu Fang"
		puts "Definitely a vampire."
	elsif year != "1989" && garlic != "yes" && insurance != "yes"
		puts "Almost certainly a vampire."
	elsif year == "1989" && (garlic == "yes" || insurance == "yes")
		puts "Probably not a vampire."
	elsif year != "1989" && (garlic != "yes" || insurance != "yes")
		puts "Probably a vampire."
	else
		puts "Results inconclusive."
	end
	times_run += 1
end
