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
# steps: iterate through list of guessed letters to see if letter is already contained in list, if it is not, add guessed letter to list
# output: return true if duplicate found or false if there is no duplicate

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
  attr_accessor :wrong_guess_count, :guessed_words_list
  attr_reader :secret_word

  def initialize(secret_word)
    @secret_word = secret_word
    @wrong_guess_count = 0
    @guessed_words_list = []
  end

  def blank_letters
    "_ " * @secret_word.length
  end
  
  def already_guessed_words_list(guessed_word)
    if @guessed_words_list.include?(guessed_word) == false
      @guessed_words_list << guessed_word
      false
    else
      true
    end
  end
  
  def reveal_word(secret_word)
    reveal_letters = @secret_word.split("")
    reveal_word = []
    blank_letters_left = @secret_word.length - @wrong_guess_count
    
    @wrong_guess_count.times do |i|
      reveal_word << reveal_letters[i]
    end
    reveal_word.push("_ " * blank_letters_left).join(" ")
  end
  
  def win(guessed_word)
    if guessed_word == @secret_word
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
puts "The amount of letters is how many guesses you have."

while game.wrong_guess_count < secret_word.length
  puts "Player 2, please guess the word. Guess number #{game.wrong_guess_count + 1}:"
  guessed_word = gets.chomp
  break if guessed_word == secret_word
      
  guess = game.already_guessed_words_list(guessed_word)
  if guess == true
    puts "You have already guessed that word. Try again."
  else guess == false && guessed_word != secret_word
    puts "Sorry, that is not the correct word."
      
    game.wrong_guess_count += 1
    puts "So far you have guessed: #{game.guessed_words_list.join(" ")}"
  end

  puts " "
  puts "Here is the secret word:"
  puts game.reveal_word(secret_word)
  puts " "
end

puts game.win(guessed_word)