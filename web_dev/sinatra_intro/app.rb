# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# write a Contact route that displays an address

get '/contact' do
  contact = params[:contact]
  "The address is #{params[:contact]}"
end

# write a great job route that displays "Great job, [name]!" if a name is present
# if there's no [name] it displays "Great job!"

get '/great_job' do
  name = params[:name]
  if name
    "Great job, #{params[:name]}!"
  else
    "Great job!"
  end
end

# write a route that accepts two integers and returns a result
get '/x/y' do
  x = params[:x]
  y = params[:y]
  answer = x.to_i + y.to_i
  "#{params[:x]} + #{params[:y]} = #{answer}"
end

