
# Training Program to track workouts

# # require gems
require 'sqlite3'

# # create SQLite3 database
db = SQLite3::Database.new("training.db")
db.results_as_hash = true

# # learn about fancy string delimiters
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS workouts (
    id INTEGER PRIMARY KEY,
    date DATE,
    name VARCHAR(255),
    exercise VARCHAR(255),
    weight INT,
    sets INT,
    reps INT
  )
SQL

# # create a training table (if it's not there already)
db.execute(create_table_cmd)
 
# # add a test user
# db.execute("INSERT INTO workouts (name, exercise, weight, sets, reps) VALUES ('Tester', 'testercise', 100, 3, 10)")


# # User Interface
loop do
puts "-------------------------------"
puts "Hello! What would you like to do? (select a number)"
puts "    1. Log a new workout"
puts "    2. Look up a past workout"
puts "    3. Update a past workout"
puts "    4. Receive a motivational quote"
puts "    5. Exit"

user_choice = gets.to_i

# # Exit program
break if user_choice == 5

# # 1 - Log new workout
if user_choice == 1
  loop do
    puts "Date of workout? (MM/DD/YY)"
    date = gets.chomp

    puts "Who did the workout?"
    name = gets.chomp

    puts "What exercise was performed?"
    exercise = gets.chomp

    puts "What weight was used?"
    weight = gets.to_i

    puts "How many sets?"
    sets = gets.to_i

    puts "how many reps?"
    reps = gets.to_i

    db.execute("INSERT INTO workouts (date, name, exercise, weight, sets, reps) VALUES (?, ?, ?, ?, ?, ?)", [date, name, exercise, weight, sets, reps])

    puts "Would you like to log another exercise? (y/n)"
    log_more = gets.chomp
    break if log_more == 'n'
    end

# # 2 - Look up past workout
elsif user_choice == 2
loop do
  puts "-------------------------------"
  puts "How would you like to search for your workout?"
  puts "1. Date"
  puts "2. Name"
  puts "3. Exercise"
  puts "4. Return to main menu"
search_choice = gets.to_i
break if search_choice == 4
if search_choice == 1
	puts "Please enter the date you would like to search for: (MM/DD/YY)"
	search_date = gets.chomp
	workout = db.execute("SELECT * FROM workouts WHERE date=?", search_date)
	workout.each do |workout|
		puts "-------------------------------"
		puts "Date: #{workout['date']}"
		puts "Person: #{workout['name']}"
		puts "Exercise: #{workout['exercise']}"
		puts "Weight: #{workout['weight']}"
		puts "Sets: #{workout['sets']}"
		puts "Reps: #{workout['reps']}"
		puts "-------------------------------"
	end
elsif search_choice == 2
	puts "Please enter the name you would like to search for: "
	search_name = gets.chomp
	workout = db.execute("SELECT * FROM workouts WHERE name=?", search_name)
	workout.each do |workout|
		puts "-------------------------------"
		puts "Date: #{workout['date']}"
		puts "Person: #{workout['name']}"
		puts "Exercise: #{workout['exercise']}"
		puts "Weight: #{workout['weight']}"
		puts "Sets: #{workout['sets']}"
		puts "Reps: #{workout['reps']}"
		puts "-------------------------------"
	end
elsif search_choice == 3
	puts "Please enter the exercise you would like to search for: "
	search_exercise = gets.chomp
	workout = db.execute("SELECT * FROM workouts WHERE exercise=?", search_exercise)
	workout.each do |workout|
		puts "-------------------------------"
		puts "Date: #{workout['date']}"
		puts "Person: #{workout['name']}"
		puts "Exercise: #{workout['exercise']}"
		puts "Weight: #{workout['weight']}"
		puts "Sets: #{workout['sets']}"
		puts "Reps: #{workout['reps']}"
		puts "-------------------------------"
	end
else
	puts "Invalid choice, please select 1-5."
end
end

# # 3 - Update past workout
elsif user_choice == 3
puts "Please enter the name you would like to name for: "
	update_name = gets.chomp
	workout = db.execute("SELECT * FROM workouts WHERE name=?", update_name)
	workout.each do |workout|
		puts "-------------------------------"
		puts "Date: #{workout['date']}"
		puts "Person: #{workout['name']}"
		puts "Exercise: #{workout['exercise']}"
		puts "Weight: #{workout['weight']}"
		puts "Sets: #{workout['sets']}"
		puts "Reps: #{workout['reps']}"
		puts "-------------------------------"
	end
puts "Please enter the exercise you would like to update for: "
	update_exercise = gets.chomp
	workout = db.execute("SELECT * FROM workouts WHERE name=? AND exercise=?", update_name, update_exercise)
	workout.each do |workout|
		puts "-------------------------------"
		puts "Date: #{workout['date']}"
		puts "Person: #{workout['name']}"
		puts "Exercise: #{workout['exercise']}"
		puts "Weight: #{workout['weight']}"
		puts "Sets: #{workout['sets']}"
		puts "Reps: #{workout['reps']}"
		puts "-------------------------------"
	end
puts "Please enter the date you would like to update for: (MM/DD/YY)"
	update_date = gets.chomp
	workout = db.execute("SELECT * FROM workouts WHERE name=? AND exercise=? AND date=?", update_name, update_exercise, update_date)
	update_key = db.execute("SELECT id FROM workouts WHERE name=? AND exercise=? AND date=?", update_name, update_exercise, update_date)
	puts update_key
	update_key_hash = update_key[0]
	p update_key_hash[0]
	workout.each do |workout|
		puts "-------------------------------"
		puts "Date: #{workout['date']}"
		puts "Person: #{workout['name']}"
		puts "Exercise: #{workout['exercise']}"
		puts "Weight: #{workout['weight']}"
		puts "Sets: #{workout['sets']}"
		puts "Reps: #{workout['reps']}"
		puts "-------------------------------"
	end

loop do
	puts "What value would you like to update?"
	puts "1. Date"
	puts "2. Person"
	puts "3. Exercise"
	puts "4. Weight"
	puts "5. Sets"
	puts "6. Reps"
	puts "7. Exit to Main Menu"
	update_choice = gets.to_i

	break if update_choice == 7

	if update_choice == 1
		puts "What would you like to update the date to?"
		date_update = gets.chomp
		db.execute("UPDATE workouts SET date=? WHERE id=?", date_update, update_key_hash[0])
	elsif update_choice == 2
		puts "What would you like to update the name to?"
		name_update = gets.chomp
		db.execute("UPDATE workouts SET name=? WHERE id=?", name_update, update_key_hash[0])
	elsif update_choice == 3
		puts "What would you like to update the exercise to?"
		exercise_update = gets.chomp
		db.execute("UPDATE workouts SET exercise=? WHERE id=?", exercise_update, update_key_hash[0])
	elsif update_choice == 4
		puts "What would you like to update the weight to?"
		weight_update = gets.to_i
		db.execute("UPDATE workouts SET weight=? WHERE id=?", weight_update, update_key_hash[0])
	elsif update_choice == 5
		puts "What would you like to update the sets to?"
		sets_update = gets.to_i
		db.execute("UPDATE workouts SET sets=? WHERE id=?", sets_update, update_key_hash[0])
	elsif update_choice == 6
		puts "What would you like to update the reps to?"
		reps_update = gets.to_i
		db.execute("UPDATE workouts SET reps=? WHERE id=?", reps_update, update_key_hash[0])
	else
		puts "Invalid choice, please select 1-7."
	end
end
# # 4 - Motivational quote
elsif user_choice == 4
  motivational_quotes = [
    "The last three or four reps is what makes the muscle grow. This area of pain divides the champion from someone else who is not a champion - Arnold Schwarzenegger",
    "In training, you listen to your body. In competition, you tell your body to shut up. - Rich Froning Jr.",
    "You shall gain, but you shall pay with sweat, blood, and vomit. - Pavel Tsatsouline",
    "There’s no secret formula. I lift heavy, work hard, and aim to be the best. - Ronnie Coleman",
    "If something stands between you and your success, move it. Never be denied. - Dwayne \"The Rock\" Johnson",
    "There comes a certain point in life when you have to stop blaming other people for how you feel or the misfortunes in your life. You can’t go through life obsessing about what might have been. - Hugh Jackman",
    "Success is usually the culmination of controlling failure. - Sylvester Stallone",
    "Don’t be afraid of failure. This is the way to succeed. - LeBron James",
    "I will sacrifice whatever is necessary to be the best. - JJ Watt",
    "Most people give up right before the big break comes—don’t let that person be you. - Michael Boyle",
    "I feel an endless need to learn, to improve, to evolve—not only to please the coach and the fans—but also to feel satisfied with myself. - Cristiano Ronaldo",
    "You’re going to have to let it hurt. Let it suck. The harder you work, the better you will look. Your appearance isn’t parallel to how heavy you lift, it’s parallel to how hard you work. - Joe Manganiello",
    "You have to push past your perceived limits, push past that point you thought was as far as you can go. - Drew Brees",
    "If you ain’t pissed off for greatness, that just means you’re okay with being mediocre. - Ray Lewis",
    "You dream. You plan. You reach. There will be obstacles. There will be doubters. There will be mistakes. But with hard work, with belief, with confidence and trust in yourself and those around you, there are no limits. - Michael Phelps",
    "When you have a clear vision of your goal, it’s easier to take the first step toward it. - LL Cool J",
    "I was never a natural athlete, but I paid my dues in sweat and concentration, and took the time necessary to learn karate and became a world champion. - Chuck Norris",
    "Your health account, your bank account, they’re the same thing. The more you put in, the more you can take out. Exercise is king and nutrition is queen. Together you have a kingdom. - Jack LaLanne",
    "To keep winning, I have to keep improving - Craig Alexander",
    "Some people want it to happen, some wish it would happen, others make it happen. - Michael Jordan",
    "I know that if I set my mind to something, even if people are saying I can’t do it, I will achieve it. - David Beckham",
    "We must appreciate and never underestimate our own inner power. - Noah Galloway"
  ]
  puts "-------------------------------"
  puts motivational_quotes.sample

# # Invalid input
else
  puts "Invalid choice, please select 1-5."

end

end
puts "Keep working out!"


