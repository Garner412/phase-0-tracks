times_run = 0

puts "How many employees would you like to process?"
number_employees = gets.to_i

until times_run == number_employees
	allergy = " "

	puts "What is your name?"
	name = gets.chomp

	puts "How old are you?"
	age = gets.to_i

	puts "What year were you born?"
	year = gets.to_i

	year_age = (2016 - year)

	puts "Our company cafeteria serves garlic bread. Should we order some for you?"
	garlic = gets.chomp

	puts "Would you like to enroll in the company's health insurance?"
	insurance = gets.chomp 

	puts "Please list any allergies you may have."
	until allergy == "done" || allergy == "sunshine"
		allergy = gets.chomp
	end

	if (name == "Drake Cula") || (name == "Tu Fang")
		puts "Definitely a vampire."
	elsif (allergy == "sunshine")
		puts "Probably a vampire"
	elsif (year_age != age) && (garlic == "no") && (insurance == "no")
		puts "Almost certainly a vampire."
	elsif (year_age == age) && ((garlic == "yes") || (insurance == "yes"))
		puts "Probably not a vampire."
	elsif (year_age != age) && ((garlic == "no") || (insurance == "no"))
		puts "Probably a vampire."
	else
		puts "Results inconclusive."
	end
	times_run += 1
end

puts "Actually, nevermind! What do these questions have to do with anything? Let's all be friends."