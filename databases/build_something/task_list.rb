# Create a task list with customization to set priority and status

require 'sqlite3'

# create SQLite3 database
db = SQLite3::Database.new("tasklist.db")
db.results_as_hash = true

