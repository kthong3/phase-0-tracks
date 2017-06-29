# client information
# enter client's personal information: name, age, # of children,
# decor theme, color theme preference (max of 3 colors), 
# number of rooms to design, is client open to suggestion?, 
# and is there a time limit?

# hash program

# ask for client information
# this information will be added to client_information hash
client_information = {}

# ask for client's name
puts "What is your name?"
name = gets.chomp
client_information[:name] = name

# ask for client's age
puts "What is your age?"
age = gets.chomp
client_information[:age] = age



