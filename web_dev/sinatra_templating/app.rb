# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# add static resources

# release 0: Add an ERB template to the application
# release 1: Create an HTTP route that will respond with the 
# template you created in the previous release
get '/campuses/new' do
  erb :new
end

# release 2: build a form and allow the user to add or manipulate 
# data in some way using a form.
  # add a campuses table to the database and allow the user to add
  # additional cities to accomplish DBC world domination
create_campuses_table = <<-SQL
  CREATE TABLE IF NOT EXISTS campuses (
    id INTEGER PRIMARY KEY,
    city_name VARCHAR(255)
  )
SQL

post '/campuses' do
  db.execute(create_campuses_table)
  db.execute("INSERT INTO campuses (city_name) VALUES (?)", params['city_name'])
  redirect '/campuses/new'
end