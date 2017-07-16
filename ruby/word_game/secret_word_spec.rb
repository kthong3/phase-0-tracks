require_relative 'secret_word'

describe Game do
let (:game) {Game.new("cat")}
  
  it "returns same number of blank spaces for length of secret word" do
    expect(game.blank_letters).to eq "_ _ _ "
  end

  it "store guessed words and find if a word has been duplicated" do
  	expect(game.already_guessed_words("dog")).to eq false
  end

end
