# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # Take input and put into an array
  # Split array into separate strings
  # Iterate through array putting each element into a hash as a key with a value of 1
  # print the list to the console [can you use one of your other methods here?]
# output: method to print

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: Add new item name as key to existing hash with the quantity as its value
# output: Hash including new item

# Method to remove an item from the list
# input: list, item name
# steps: Find the item name and delete key/value pair using item name
# output: Hash without item name that was removed

# Method to update the quantity of an item
# input: list, item name, and quantity
# steps: Find the item as the key in the hash and update the value of the quantity
# output: Hash with an updated value for the item

# Method to print a list and make it look pretty
# input: list
# steps: Iterate through the hash to print out each key/value pair
# output: Each key/value pair would be printed as strings

def list_creator(str)
  list = str.split(" ")
  grocery_list = {}
  list.each do |item|
    grocery_list[item] = 1
  end
  grocery_list
end

def add_item(list, item, quantity=1)
  list[item] = quantity
  list
end

def remove_item(list, item)
  list.delete(item)
  list
end

def update_quantity(list, item, quantity)
  list[item] = quantity
  list
end

def print_list(list)
  list.each do |item, quantity|
    puts "#{item}: #{quantity}"
  end
end

# str = "carrots apples cereal pizza"
# remove_item(grocery, "pizza")
# update_quantity(grocery, "milk", 2)

shopping_items = "bananas grapefruit watermelon pasta tomatoes"

grocery = list_creator(shopping_items)

add_item(grocery, "lemonade", 2)
add_item(grocery, "tomatoes", 3)
add_item(grocery, "onions", 1)
add_item(grocery, "ice_cream", 4)
add_item(grocery)

remove_item(grocery, "lemonade")
update_quantity(grocery, "ice_cream", 1)

print_list(grocery)

# Reflect
# What did you learn about pseudocode from working on this challenge?
  # Learned that it is okay to be vague with pseudocoding to express 
  # idea of what you want the program to do. I assumed before that I 
  # should be very specific

# What are the tradeoffs of using arrays and hashes for this challenge?
  # Arrays and hashes express the information differently so it would 
  # have been much more challenging if we had only worked with arrays.
  # With hashes, we were able to work with more information since each
  # item on the list might a quantity

# What does a method return?
  # Methods return the value of the last expression in the method

# What kind of things can you pass into methods as arguments?
  # Just about anything since a variable could also be a string, hash,
  # or array

# How can you pass information between methods?
  # By declaring a variable outside of the methods and using that
  # variable as an argument for the methods

# What concepts were solidified in this challenge, and what concepts 
# are still confusing?
  # I was able to understand better how methods could work together
  # without using a class (after learning about classes). I know 
  # before we did take variables and pass them as arguments in more
  # than one method but I felt that those methods primarily focusing 
  # on the loops and iterating through the arrays and hashes that
  # we were working with.