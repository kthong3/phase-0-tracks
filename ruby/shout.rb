# module Shout
  # def self.yell_angrily(words)
    # words + "!!!" + " :("
  # end
 
  # def self.yell_happily(words)
    # words + " YAY! :)"
  # end
# end

# puts Shout.yell_angrily("I'm hungry")
# ==> "I'm hungry!!! :("

# puts Shout.yell_happily("I'm so happy")
# ==> "I'm so happy YAY! :)"

module Shout
  def scream
    puts "AHHHH!"
  end

  def yell(words)
    puts words.upcase + "!!!"
  end
end

class Llama
  include Shout
end

class Sportscaster
  include Shout
end

henry = Llama.new
henry.scream
# ==> AHHHH!
henry.yell("I'm so hungry")
# ==> I'M SO HUNGRY!!!

andre = Sportscaster.new
andre.scream
# ==> AHHHH!
andre.yell("goal")
# ==> GOAL!!!

