
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


# # Retrieve Data
workout = db.execute("SELECT * FROM workouts")
workout.each do |workout|
	puts "#{workout['name']} performed #{workout['sets']} sets of #{workout['reps']} reps with #{workout['weight']} pounds while #{workout['exercise']}ing."
end

# # add LOOOOTS of kittens!
# # so. many. kittens. 
# #KittenExplosion
# def create_kitten(db, name, age)
#   db.execute("INSERT INTO kittens (name, age) VALUES (?, ?)", [name, age])
# end

# 100.times do
#   create_kitten(db, Faker::Name.name, 0)
# end

# # explore ORM by retrieving data
# # kittens = db.execute("SELECT * FROM kittens")
# # kittens.each do |kitten|
# #  puts "#{kitten['name']} is #{kitten['age']}"
# # end
