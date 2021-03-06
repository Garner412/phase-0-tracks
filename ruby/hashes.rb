
=begin

Pseudocode

Allow to enter details for client details
Update the variables with the inputted data
Convert data to correct type if needed
Return the hash for the user to review
Ask if there are any changes they need to make
If they select a value to change, prompt them to input the correct data
Print the most updated version again
If user selects done, end the program

=end

client_details = {}

puts "Please enter the following data for your client."

puts "Client name:"
client_details[:name] = gets.chomp

puts "Client age:"
client_details[:age] = gets.to_i

puts "Number of children:"
client_details[:number_of_children] = gets.to_i

puts "What decor theme does the client prefer?"
client_details[:decor_theme] = gets.chomp

puts "Would the client like to begin work this month?"
client_details[:start_in_month] = gets.chomp

puts client_details


puts "Would you like to update any information after reviewing it?"
update_choice = gets.chomp

if update_choice == "yes"
	puts "What would you like to update?"
	puts client_details.keys

	choice_update = gets.chomp
		if choice_update == "name"
			puts "Please enter new name."
			client_details[:name] = gets.chomp
		elsif choice_update == "age"
			puts "Please enter correct age."
			client_details[:age] = gets.to_i
		elsif choice_update == "number_of_children"
			puts "Please enter correct number of children."
			client_details[:number_of_children] = gets.to_i
		elsif choice_update == "decor_theme"
			puts "Please enter correct decor theme."
			client_details[:decor_theme] = gets.chomp
		elsif choice_update == "start_in_month"
			puts "Please enter correct start value."
			client_details[:start_in_month] = gets.chomp
		else
			puts "You did not select a correct value to update. Change not processed."
	end
	puts "Your information has been updated. Have a great day!"
elsif update_choice == "no"
	puts "Have a great day!"
else
	puts "I did not understand your terrible typing."
end

p client_details
