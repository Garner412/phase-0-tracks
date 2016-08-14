
# Training Program to track workouts

# # require gems
require 'sqlite3'
require 'faker'

# # create SQLite3 database
db = SQLite3::Database.new("training.db")
db.results_as_hash = true

# # learn about fancy string delimiters
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS workouts (
    id INTEGER PRIMARY KEY,
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

puts "Please enter your name."
name = gets.chomp

puts "Please enter the exercise you performed."
exercise = gets.chomp

puts "Please enter the weight you used."
weight = gets.to_i

puts "Please enter the number of sets."
sets = gets.to_i

puts "Please enter the number of reps."
reps = gets.to_i

db.execute("INSERT INTO workouts (name, exercise, weight, sets, reps) VALUES (?, ?, ?, ?, ?)", [name, exercise, weight, sets, reps])

# # explore ORM by retrieving data


workout = db.execute("SELECT * FROM workouts")
workout.each do |workout|
	puts "#{workout['name']} performed #{workout['sets']} sets of #{workout['reps']} reps with #{workout['weight']} pounds while #{workout['exercise']}ing."
end

