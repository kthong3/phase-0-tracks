# encrypt method
# input: letters
# outputs: returns the following letter of each input letter
# if input is "abc" next letters should be "bcd"

def encrypt(str) 
  count = 0 # start at 0 since the first letter will be in index 0. 
  alphabet = "abcdefghijklmnopqrstuvwxyz" # create a string to have a reference to look for the indicies of each letter. 
  
  while count < str.length # create a loop that will search each letter of the string and covert it into an index then back into a letter. 
    if str.index("z") == nil # so if z is not there, do the following steps: 
    
      # create a variable that will store the indicies that Ruby has found by taking each letter of the string and converting them into indicies.
      make_char_a_number = alphabet.index(str[count]) 
      
      # create a variable that will store the indicies and add it to 1. 
      #(where the letters will be placed on higher indicies ex: 'a' will have an index of 1 instead of 0)		  
      str[count]= alphabet[make_char_a_number +=1] 
    
    	#create a variable that will store the indicies and convert it back to letters.
      back_to_char = alphabet[make_char_a_number] 
      
      #create a variable that will store the converted letters.
      str[count] = back_to_char 
    elsif
    	# if the string contains input letter z, set variable to have output letter always be letter a
      str[count] == alphabet[25]
      str[count] = alphabet[0]
    else
    	# otherwise, set variable to output the next letter if the string does not contain letter z
      str[count] = str[count].next
    end 
    
    count += 1 # create a variable to avoid having an infinite loop
  end 
  
  puts str # displays the new converted string
  str
end 


# decrypt method
# input: letters
# outputs: returns the previous letter of each input letter
# if input is "bcd" the output should be "abc"

def decrypt(str)
 	count = 0 #create a variables that will start the count at 0 since the first letter is at index 0 
 	a_count = 0 
 	
	alphabet = "abcdefghijklmnopqrstuvwxyz"  # create a string to have a reference to look for the indicies of each letter. 
  
	until count == str.length # create a loop that will perform the decrypting for each letter in the string 
  
		a_count = alphabet.index(str[count]) # create a variable that will store the string and convert its letters into indicies
    
		str[count] = alphabet[a_count-=1] # create a variable that will allow the alphabet index to have a_count move backwards
    
		count +=1 # create a variable that will avoid having an infinite loop
	end
	
  puts str # displays the decrypted string
  str
end
 
# (decrypt(encrypt("swordfish"))
# There can be many issues with nested methods so it is recommended to not use them.
# This nested method call worked fine because these are separate methods but 
# The reason why this method worked is because the encrypt method 
# was evaluated first and returned the value as a string, which is the same 
# parameter necessary for the decrypt method to work.


# preference method
# input: encrypt / decrypt and password
# output: a password that is encrypted/decrypted
# if input is encrypted, the program will take the password and encrypt it
# by changing the letters to the following letters of the alphabet.
# if input is decrypted, the program will take the password and decrypt it
# by changing the letters to the previous letters of the alphabet.

preference = ""
until preference  == "Decrypt" || preference  == "Encrypt"
  puts "Please type whether you want to encrypt or decrypt your password:"
  preference = gets.chomp
  preference.capitalize! # automatically capitalize the first letter of each input
 
 if preference == "Decrypt"
    puts "Type in what password you want to decrypt:"
    password = gets.chomp
    puts "The password you decrypted is"
    decrypt(password)
  elsif preference == "Encrypt"
    puts "Type in what password you want to encrypt:"
    password = gets.chomp
    puts "The password you encrypted is"
    encrypt(password)
  else 
    puts "Sorry, I do not understand. Please try again." # repeat the question if input is not exactly Decrypt or Encrypt
  end
end