
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
puts "Hello! What would you like to do? (select a number)"
puts "    1. Log a new workout"
puts "    2. Look up a past workout"
puts "    3. Update a past workout"
puts "    4. Receive a motivational quote"
puts "    5. Exit"

user_choice = gets.to_i

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
  puts "You selected 2"
# # 3 - Update past workout
elsif user_choice == 3
  puts "You selected 3"
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
    "Don’t be afraid of failure. This is the way to succeed. - Lebron James",
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
  puts "--------------"
  puts motivational_quotes.sample
  puts "--------------"
# # Invalid input
else
  puts "I didn't not understand your choice, please select 1-5."
# # 5 - exit program

end

end
puts "Keep up the workouts!"

# # explore ORM by retrieving data (all data from all workouts)

workout = db.execute("SELECT * FROM workouts")
workout.each do |workout|
	puts "----------"
	puts "Date: #{workout['date']}"
	puts "Person: #{workout['name']}"
	puts "Exercise: #{workout['exercise']}"
	puts "Weight: #{workout['weight']}"
	puts "Set: #{workout['sets']}"
	puts "Reps: #{workout['reps']}"
	puts "----------"
end

