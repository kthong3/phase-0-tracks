# Create a task list with customization to set priority and status

require 'sqlite3'

# create SQLite3 database
db = SQLite3::Database.new("tasklist.db")
db.results_as_hash = true

# create commands in SQL
create_tasks_table = <<-SQL
  CREATE TABLE IF NOT EXISTS tasks (
    id INTEGER PRIMARY KEY,
    task VARCHAR(255),
    priority_id INT,
    status_id INT,
    FOREIGN KEY (priority_id) REFERENCES priority(id),
    FOREIGN KEY (status_id) REFERENCES status(id)
  )
SQL

create_priority_table = <<-SQL
  CREATE TABLE IF NOT EXISTS priority (
    id INTEGER PRIMARY KEY,
    priority VARCHAR(255)
  )
SQL

create_status_table = <<-SQL
  CREATE TABLE IF NOT EXISTS status (
    id INTEGER PRIMARY KEY,
    status VARCHAR(255)
  )
SQL

# create the tasks, priority, and status tables
db.execute(create_tasks_table)
db.execute(create_priority_table)
db.execute(create_status_table)

# add priorities to priority list
db.execute("INSERT INTO priority (priority) VALUES ('high')")
db.execute("INSERT INTO priority (priority) VALUES ('medium')")
db.execute("INSERT INTO priority (priority) VALUES ('low')")

# add statuses to status list
db.execute("INSERT INTO status (status) VALUES ('to-do')")
db.execute("INSERT INTO status (status) VALUES ('in-progress')")
db.execute("INSERT INTO status (status) VALUES ('completed')")

def start(db)
  puts "Hello, I am your Tasklist!"
  input = true
  while input
    puts "What would you like to do? Add, Update, Delete, or View."
    puts "If you are done, please type 'q'"
    choice = gets.chomp.downcase
    break if choice == 'q'
    case choice
      when "add"
        add(db)
      when "update"
        puts "What would you like to update: priority or status?"
      when "delete"
        puts "Task deleted."
      when "view"
        puts "Viewing all  tasks."
      else
      puts "Sorry, I didn't get that. Please type a valid option: add, update, delete, or view."
      puts "Otherwise, please type 'q' if you are done with this task list."
    end
  end
  puts "Goodbye!"
end

def add(db)
  puts "Type the task you would like to add:"
  task_input = gets.chomp
  
  puts "Type the priority number of this task: 1. high, 2. medium, or 3. low."
  priority_input = gets.chomp
    while priority_input != "1" && priority_input != "2" && priority_input != "3"
      puts "Please type the number for the priority: 1 (high), 2 (medium),  or 3 (low)."
      priority_input = gets.chomp
    end
   priority_input = priority_input.to_i 
  
  puts "Type the status number of this task: 1. to-do, 2. in-progress, 3. completed."
  status_input = gets.chomp
    while status_input != "1" && status_input != "2" && status_input != "3"
      puts "Please type the number for the status: 1 (to-do), 2 (in-progress),  or 3 (completed)."
      status_input = gets.chomp
    end
  status_input = status_input.to_i

  db.execute("INSERT INTO tasks (task, priority_id, status_id) VALUES (?, ?, ?)", [task_input, priority_input, status_input])
  puts "Task added."
end

start(db)