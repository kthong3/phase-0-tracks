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

# create the tasks, priority and status tables
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