# Word guessing game
# Allow 2 users to play a word guessing game
# Allow 1st user will enter a secret word. 
# The number of letters in the secret word will determine the number of guesses for the 2nd user.
# Allow 2nd user to guess the word. Repeated guesses will not count against the 2nd user.
# After each incorrect word guess, a new letter of the secret word will appear.
# If 2nd user guesses the word correctly before the whole secret word appears, 2nd user wins
# If 2nd user does not guess correctly before the secret word appears, 2nd user loses

# BUSINESS LOGIC
# Method to turn secret word into blank spaces
# input: secret word
# steps: determine number of letters of secret word
# output: A blank space _ will print for each letter that is in the secret word

# Method to store guessed words and find if any have been duplicated
# input: guessed word
# steps: Iterate through list of guessed words to see if word is already contained in list of guessed words, if it is not, add guessed word to list
# output: Return true if duplicate found or false if there is no duplicate

# Method to show guessed words after each guess
# input: guessed word
# steps: Put guessed word in a list to show all guessed words
# output: Return each guessed word after each guess.

# Method to reveal one letter of secret word if secret word is not guessed correctly
# input: secret word, guessed word
# steps: Check to see guess word and secret word are the same, if not, after each wrong guess, reveal one letter of the secret word
# output: A letter of the secret word and blank spaces
class Game
  attr_accessor :wrong_guess_count, :guessed_words_list
  attr_reader :secret_word
  
  def initialize(secret_word)
    @secret_word = secret_word
    @wrong_guess_count = 0
    @guessed_words_list = []
  end

  def blank_letters
    letters = @secret_word.length
    p "_ " * letters
  end
  
  def already_guessed_words(guessed_word)
    if @guessed_words_list.include?(guessed_word) == false
      @guessed_words_list << guessed_word
      false
    else @guessed_words_list.include?(guessed_word) == true
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
    
    puts reveal_word.push("_ " * blank_letters_left).join(" ")
  end

end



