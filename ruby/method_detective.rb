# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

"zom".insert(2, "o")
# => “zoom”

"enhance".center(15)
# => "    enhance    "

"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

"the usual".insert(9, " suspects")
#=> "the usual suspects"

" suspects".prepend("the usual")
# => "the usual suspects"

"The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

"The mystery of the missing first letter".slice(1,39)
# => "he mystery of the missing first letter"

"Elementary,    my   dear        Watson!".squeeze
# => "Elementary, my dear Watson!"

"z".ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
# .ord returns ASCII code of a character

"How many times does the letter 'a' appear in this string?".count "a"
# => 4

# testing it out with evidence
puts "EvidencE".swapcase
# => "eVIDENCe"

puts "Evidence".insert(2, "!")
# => "Ev!dence"

puts "evidence".center(16)
# => "    evidence    "

puts "EvidencE".upcase
# => "EVIDENCE"

puts "Evidence".insert(8, " is important")
#=> "Evidence is important"

puts "evidence".prepend("important ")
# => "important EvidencE"

puts "EvidencE".chop
# => "Evidenc"

puts "Evidence".slice(1,8)
# => "vidence"

string = "important   evidence"
puts string.squeeze
# => "important evidence"

puts "A".ord
# => 65

puts "evidence".count "e"
# => 3