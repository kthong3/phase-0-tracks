module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
    words + " YAY! :)"
  end
end

puts Shout.yell_angrily("I'm hungry")
# ==> "I'm hungry!!! :("

puts Shout.yell_happily("I'm so happy")
# ==> "I'm so happy YAY! :)"