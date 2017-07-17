# Word guessing game
# Allow 2 users to play a word guessing game
# Allow 1st user will enter a secret word. 
# The number of letters in the secret word will determine the number of guesses for the 2nd user.
# Allow 2nd user to guess the word one letter at a time. Repeated guesses will not count against the 2nd user.
# A new letter will appear if 2nd user has guessed a letter correctly
# If 2nd user guesses the word correctly before the whole secret word appears, 2nd user wins
# If 2nd user does not guess correctly before the secret word appears, 2nd user loses

# BUSINESS LOGIC
# Method to turn secret word into blank spaces
# input: secret word
# steps: determine number of letters of secret word
# output: A blank space _ will print for each letter that is in the secret word

# Method to store guessed letters and find if any have been duplicated
# input: guessed letters
# steps: iterate through list of guessed letters to see if letter is already
#   contained in list, if it is not, add guessed letter to list
# output: Warning to user if letter is repeated

# Method to show guessed letters after each guess
# input: guessed letter
# steps: put guessed letter in a list
# output: return all guessed letters after each guess.

# Method to reveal one letter of secret word if letter is guessed correctly
# input: secret word, guessed word
# steps: check to see guessed letter is in secret word
# output: return "try again" if not in 

# Method to determine winner
# input: guessed letter
# steps: user will lose if all guesses are done or wins if guesses the word correctly
# output: tell user if they win or lose

class Game
  attr_accessor :guess_count, :all_guessed_letters, :correct_letters
  attr_reader :secret_word

   def initialize(secret_word)
    @secret_word = secret_word
    @guess_count = 0
    @correct_letters = []
    @all_guessed_letters = []
  end

  def blank_letters
    blank_letters = "_ " * @secret_word.length
    @correct_letters << blank_letters
    blank_letters
  end
  
  def check_letter(guessed_letter)
    secret_word_letters = @secret_word.split("")
    
    if secret_word_letters.include?(guessed_letter)
      secret_word_letters.length do |i|
        if secret_word_letters[i] == guessed_letter
          @correct_letters[i] = guessed_letter
          # try to get correct_letters index to change to guessed letter
          # instead of blank letter
          # attempted with insert and delete at built-in methods
        end
      end  
      "Good job! you guessed a correct letter!"
    else
      "Sorry, that is not the correct letter."    
    end
  end

  def win
    if @correct_letters == @secret_word
      "Good guess, Player 2!! you win!".upcase 
    else
      "You have no more guesses left! 1st player wins!"
    end
  end
end

# USER INTERFACE
puts "Let's play a guessing game!"
puts "Player 1, please enter your secret word:"
secret_word = gets.chomp

# allow user to only enter one word
while secret_word.include?(" ")
    puts "Please enter only one word."
    puts "Player 1, please enter your secret word:"
    secret_word = gets.chomp
end
game = Game.new(secret_word)

puts "Player 2, here is the number of letters for the secret word:"
puts game.blank_letters
puts " "

while game.guess_count < secret_word.length
  puts "Player 2, please enter a letter. Guess number #{game.guess_count + 1}:"
  guessed_letter = gets.chomp
    
  while guessed_letter.length > 1
    puts "Please type only one letter at a time."
    puts "Player 2, please enter a letter:"
    guessed_letter = gets.chomp
  end
  
  break if game.correct_letters.join(" ") == secret_word
  
  if game.all_guessed_letters.include?(guessed_letter) == true
    puts "You have already guessed that letter. Try again."
  else
    game.all_guessed_letters << guessed_letter
    
    puts game.check_letter(guessed_letter)
    game.guess_count += 1
  end  
  
  puts "So far you have guessed: #{game.all_guessed_letters.join(" ")}"
  puts "Word: #{game.correct_letters.join(" ")}"
  puts " "
end

puts game.win