# Create a game class for word guessing game
# Game will allow 2 users to play a word guessing game
# 1st user will enter a secret word.
# Each letter of the secret word will appear as a blank space _.
# The number of blank spaces will determine how many guesses 2nd user will be allowed.
# Repeated guesses will not count against the 2nd user.
# After each letter guess, a new letter of 1st user's secret word will appear. 
# If 2nd user is able to guess the word correctly before all of the letters have appeared,
#   a message will appear to congratulate the 2nd user.
# Otherwise, if the user is not able to guess the word after all letters of the secret word 
#   have appeared, a taunting message will appear for 2nd user.

# BUSINESS LOGIC
# Method: iterate through string and randomly choose a letter to insert
# Method: while user is guessing the word, after each guess, add a character from secret
#   word to print until all the letters have printed
class Game
  def initialize(secret_word)
    @secret_word = secret_word
  end

  # Method: a random word will be chosen by 1st user and change empty string to the secret
  # word. A blank space _ will print for each letter that is in the secret word
  def blank_letters
    letters = @secret_word.length
    p "_ " * letters
  end


end


# USER INTERFACE
# Ask 1st user to enter a secret word. 2nd user must turn around and/or look away while the
#   1st user is typing secret word.
# Ask 2nd user to guess the secret word

# loop: length of secret word will determine number amount of guesses 2nds user has but 
#   excluding any repeated letters
# If user guesses the word correctly before the secret word appears, 2nd user wins
# If user doesn't ever guess correctly before the secret word appears, 2nd user loses

puts "Let's play a guessing game!"
puts "Player 2, please turn around while Player 1 enters secret word."
puts "Player 1, please enter your secret word:"
# secret_word = gets.chomp
# game = Game.new(secret_word)

puts "Here is the number of letters for the secret word:"
# game.blank_letters

# Otherwise, method will keep adding a new letter to string
  
end
