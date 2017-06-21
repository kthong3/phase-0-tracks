puts "What is the hamster's name?"
name = gets.chomp

valid_input = false

until valid_input
	puts "On a scale from 1-10, how loud is the hamster?"
	volume = gets.chomp.to_i

	if volume >= 1 && volume <= 10
		valid_input = true
	elsif volume > 10 || volume == 0
		valid_input = false
		puts "Please choose a number from 1 to 10."
	else
		"I didn't understand that."
	end
end

while valid_input
	puts "What is the hamster's fur color (black, brown, white, or multi-color)?"
	fur_color = gets.chomp.downcase
	if fur_color == "black"
			valid_input = false
		elsif fur_color == "brown"
			valid_input = false
		elsif fur_color == "white"
			valid_input = false
		elsif fur_color == "multi-color"
			valid_input = false
		else
			puts "Please select the hamster's fur color from the list."
		end
end

valid_input = false

until valid_input
	puts "Is the hamster a good candidate for adoption? (y/n)"
	adoption = gets.chomp.downcase
	if adoption == "y" || adoption == "yes"
		valid_input = true
	elsif adoption == "n" || adoption == "no"
		valid_input = true
	else
		puts "Please let us know if this hamster is possessed."
	end
end

estimated_age = nil

puts "What is the estimated age of this hamster (number of years)?"
estimated_age = gets.chomp

puts "This hamster's name is #{name}."
puts "The volume of this hamster is #{volume}."
puts "This hamster's fur color is #{fur_color}."
puts "This hamster is a good candidate for adoption. (#{adoption})"
puts "The estimated age of this hamster is #{estimated_age}."