# require gems
require 'sinatra'
require "sinatra/reloader" if development?
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

# write a /contact route that displays address
get '/contact' do
  "12345 Mulberry Lane"
end

# write a /great_job route that can take a person's name as a query parameter
# and say "Good job, [person's name]!" If the query parameter is not present,
# the route simply says "Good job!"
get '/great_job' do
  person = params[:person]
  if person
    "Good job, #{person}!"
  else
    "Good job!" 
  end
end

# write a GET route that uses route parameters to add two numbers and respond
# with the result.
get '/:number_1/plus/:number_2' do
  number_1 = params[:number_1].to_i
  number_2 = params[:number_2].to_i
  total = number_1 + number_2
  total = total.to_s
  "The total is #{total}!"
end

# Make a route that allows the user to search the database in some way, maybe 
# for students who have a certain first name, or some other attribute. 
# If you like, you can simply modify the home page to take a query parameter, 
# and filter the students displayed if a query parameter is present.
# FIND STUDENTS AT CERTAIN LOCATIONS
get '/find' do
  student_location = params[:campus]

  if student_location
    find_campus = db.execute("SELECT * FROM students WHERE campus=?", student_location)
    response_location = ""
    find_campus.each do |student|
      response_location << "ID: #{student['id']}<br>"
      response_location << "Name: #{student['name']}<br>"
      response_location << "Age: #{student['age']}<br>"
      response_location << "Campus: #{student['campus']}<br><br>"
    end
    response_location
  else
    "Sorry, I did not understand what you are looking for."
  end
end