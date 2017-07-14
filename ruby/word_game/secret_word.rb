# Create a game class for word guessing game
# Game will allow 2 users to play a word guessing game
# 1st user will enter a secret word.
# The secret word will appear as a blank space _ for each letter of the secret word.
# 2nd user will guess the word. Repeated guesses will not count against the 2nd user.
# After each guess, a new letter of 1st user's secret word will appear. 
# If 2nd user is able to guess the word correctly before the whole secret word has appeared,
#   a message will appear to congratulate the 2nd user.
# Otherwise, if the user is not able to guess the word after all letters of the secret word 
  # have appeared, a taunting message will appear for 2nd user.

# BUSINESS LOGIC
# Create Game class
# Game.new will initialize an empty string
# Method: a random word will be chosen by 1st user and change empty string to the secret
#   word. Method will print out a blank space _ for each letter that is in the secret word
# Method: take a string from the secret words array and split it into individual characters
#   to iterate through
# Method: while user is guessing the word, after each guess, add a character from secret
#   word to print until all the letters have printed
class Game
  def initialize(secret_word)
    @secret_word = secret_word
  end

  def blank_letters
    letters = @secret_word.length
    p "_ " * letters
  end
end



# USER INTERFACE
# Ask 1st user to enter a secret word. 2nd user must turn around and/or look away while the
#   1st user is typing secret word.
# Ask 2nd user to guess the secret word
# loop: While the 2nd user has not input in the correct word, program will continually
#   output one letter of secret word until each letter of secret word has appeared
# If user guesses the word correctly before the secret word appears, user wins
# If user doesn't ever guess correctly before the secret word appears, user loses
puts "Let's play a guessing game!"
puts "Player 2, please turn around while Player 1 enters secret word."
puts "Player 1, please enter your secret word:"
# game = Game.new(secret_word)

puts "Player 2, please guess the word:"
# game.blank_letters