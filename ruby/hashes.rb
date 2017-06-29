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

# ask for client's number of children
puts "How many children do you have?"
num_of_children = gets.chomp.to_i
client_information[:num_of_children] = num_of_children

# ask client for what decor theme they want
puts "What type of decor theme would you like?"
decor_theme = gets.chomp
client_information[:decor_theme] = decor_theme







