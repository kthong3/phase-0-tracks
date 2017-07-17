require_relative 'secret_word'

describe Game do
let (:game) {Game.new("cat")}
  
  it "returns same number of blank spaces for length of secret word" do
    expect(game.blank_letters).to eq "_ _ _ "
  end

  it "reveals one letter if letter has been guessed correctly" do
  	expect(game.check_letter("c")).to eq "Good job! you guessed a correct letter!"
  end

  it "determines user to win if word is guesses word correctly, otherwise user loses" do
  	expect(game.win).to eq "You have no more guesses left! 1st player wins!"
  end

end
