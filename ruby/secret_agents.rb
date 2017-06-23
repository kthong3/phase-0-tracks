# encrypt method
# input: letters
# outputs: next letter after input letter 
	# if input is "abc" next letters should be "bcd"
	# method should pass through each letter in index
	# & return the next letter of each input letter

# puts "put three letters"
#	letters = gets.chomp

def nextletter(str)
	a = str[0].next
	b = str[1].next
	c = str[2].next
	puts a + b + c
end

puts nextletter("abc")

# decrypt method
# input: letters
# outputs: letter before input letter 
	# if input is "bcd" next letters should be "abc"
	# method should pass through each letter in index
	# & return the letter before each input letter

