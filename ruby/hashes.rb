
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

puts "Would the client like to begin work this month? (yes/no)"
client_details[:start_in_month] = gets.chomp

puts client_details