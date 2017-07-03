# Alias Manager
# Write a method(s) that takes a real name and outputs a fake name.
# First and last name is swapped first, change each vowel (aeiou)
# to the next vowel, and then all of the constanants to the next
# constanant in the alphabet.
# 'a' would be come 'e'
# 'u' would become 'a'
# 'd' would become 'f'
# example: mickey mouse ==> mouse mickey ==> muasi mockiy
# ==> nuati nodliz

def alias_manager(name)
  array = name.split(" ").reverse
    # .split will return the name into two indexes in an array
    # .reverse will swap the names in the array
    # ==> ["last", "first"]

  # split the first and last names into two separate strings
  last = array[0]
  first = array[1]
  
  # create empty string variables to add to for new first name and new last name
  new_first = ""
  new_last = ""
  
  # iterate through each index of each of the first and last arrays
  last.length.times do |i|              
    new_first << change_char(last[i])  
      # last array will go through change_char method and then add new 
      # string characters to new_first string variable
    new_first.capitalize!     # using ! to capitalize new first name
  end
  
  first.length.times do |i|
    new_last << change_char(first[i])
      # first array will go through change_char method and then add new 
      # string characters to new_last string variable
    new_last.capitalize!      # using ! to capitalize new last name
  end

  new_alias = new_first + ' ' + new_last
  new_alias
end