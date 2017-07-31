# Create a task list with customization to set priority and status

require 'sqlite3'

# create SQLite3 database
db = SQLite3::Database.new("tasklist.db")
db.results_as_hash = true

# create a command in SQL
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS tasks (
    id INTEGER PRIMARY KEY,
    task VARCHAR(255),
    priority INT,
    status VARCHAR(255) 
  )
SQL

# create the tasks table
db.execute(create_table_cmd)
