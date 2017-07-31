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
    priority VARCHAR(255) UNIQUE
  )
SQL

create_status_table = <<-SQL
  CREATE TABLE IF NOT EXISTS status (
    id INTEGER PRIMARY KEY,
    status VARCHAR(255) UNIQUE
  )
SQL

# create the tasks, priority, and status tables
db.execute(create_tasks_table)
db.execute(create_priority_table)
db.execute(create_status_table)

# add priorities to priority list
db.execute("INSERT OR IGNORE INTO priority (priority) VALUES ('high')")
db.execute("INSERT OR IGNORE INTO priority (priority) VALUES ('medium')")
db.execute("INSERT OR IGNORE INTO priority (priority) VALUES ('low')")

# add statuses to status list
db.execute("INSERT OR IGNORE INTO status (status) VALUES ('to-do')")
db.execute("INSERT OR IGNORE INTO status (status) VALUES ('in-progress')")
db.execute("INSERT OR IGNORE INTO status (status) VALUES ('completed')")

def start_list(db)
  puts "Hello, I am your Tasklist!\n"
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
        update_task(db)
      when "delete"
        delete_task(db)
      when "view"
        view_tasklist(db)
      else
      puts "Sorry, I didn't get that. Please type add, update, delete, or view."
      puts "Please type 'q' if you are done."
    end
  end
  puts "Here is your Task List:"
  tasklist = db.execute("SELECT tasks.id, tasks.task, priority.priority, status.status FROM tasks, priority, status WHERE tasks.priority_id = priority.id AND tasks.status_id = status.id")
  tasklist.each do |task|
  puts "#{task['id']} #{task['task']}: priority: #{task['priority']}, status: #{task['status']}"
  end
  puts "\nGoodbye!"
end

# allow user to add a task to the task list
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

# allow user to update a task if there is an existing task in the task list
def update_task(db)
  puts "What task would you like to update?"
  task_to_update = gets.chomp
  while check_database(db, task_to_update) == false
    puts "Sorry, that task is not on your task list."
    puts "Please type the task that you would like to update."
    task_to_update = gets.chomp.downcase
  end
  puts "Would you like to update the priority or status?"
  update_input = gets.chomp.downcase
  while update_input != "priority" && update_input != "status"
      puts "Sorry, I didn't get that. Please type priority or status."
      update_input = gets.chomp.downcase
  end

  if update_input == "priority"
    puts "What would you like to update the priority to? 1. high, 2. medium, or 3. low."
      priority_update = gets.chomp
      while priority_update != "1" && priority_update != "2" && priority_update != "3"
        puts "Please type the number to update the priority: 1 (high), 2 (medium),  or 3 (low)."
        priority_update = gets.chomp
      end
    priority_update = priority_update.to_i
    db.execute("UPDATE tasks SET priority_id=#{priority_update} WHERE task='#{task_to_update}'")
    puts "Priority updated."
  else
    update_input == "status"
    puts "What would you like to update the status to? 1. to-do, 2. in-progress, 3. completed."
      status_update = gets.chomp
      while status_update != "1" && status_update != "2" && status_update != "3"
        puts "Please type the number to update the status: 1 (to-do), 2 (in-progress),  or 3 (completed)."
        status_update = gets.chomp
      end
    status_update = status_update.to_i
    db.execute("UPDATE tasks SET status_id=#{status_update} WHERE task='#{task_to_update}'")
    puts "Status updated."
  end
end

# check if the input exists in the task list
def check_database (db, task_to_update)
  check_tasks = db.execute("SELECT * FROM tasks")
  check_tasks.each do |task|
    if task['task'] == task_to_update
     return true
    end
  end
  false
end

# allow user to delete a task from the task list (if task exists)
def delete_task(db)
  puts "What task would you like to delete?"
  task_to_delete = gets.chomp
  while check_database(db, task_to_delete) == false
    puts "Sorry, that task is not on your task list."
    puts "Please type the task that you would like to delete."
    task_to_delete = gets.chomp.downcase
  end
  db.execute("DELETE FROM tasks WHERE task='#{task_to_delete}'")
  puts "Task deleted."
end

# allow user to view what is in the task list.
def view_tasklist(db)
  tasks = db.execute("SELECT tasks.id, tasks.task, priority.priority, status.status FROM tasks, priority, status WHERE tasks.priority_id = priority.id AND tasks.status_id = status.id")
  tasks.each do |task|
  puts "#{task['id']} #{task['task']}: priority: #{task['priority']}, status: #{task['status']}"
  end
end

# driver code
start_list(db)