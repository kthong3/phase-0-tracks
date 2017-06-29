# client information
# enter client's personal information: name, age, # of children,
# decor theme, number of rooms to design, is client open to 
# suggestion?, # and is there a strict deadline?

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

# ask for number of rooms to design
puts "How many rooms are you looking to design?"
num_of_rooms = gets.chomp.to_i
client_information[:num_of_rooms] = num_of_rooms

# ask if client is open to our suggestions
valid_input = false
until valid_input
  puts "Would you be open to suggestions? (Yes/No)"
  suggestions = gets.chomp.downcase
	if suggestions == "yes" || suggestions == "no"
		valid_input = true
	else
	  puts "I did not understand, please type yes or no."
	end
end

client_information[:suggestions] = suggestions

# ask client if there is a strict deadline
valid_input = false
until valid_input
  puts "Do you have a strict deadline?"
  strict_deadline = gets.chomp.downcase
	if strict_deadline == "yes" || strict_deadline == "no"
		valid_input = true
	else
	  puts "I did not understand, please type yes or no."
	end
end

client_information[:strict_deadline] = strict_deadline












