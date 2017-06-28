def print_animal
  puts "Welcome to animal lister"
  yield("Dog", "Cat")
 end

print_animal { |animal1,animal2| puts "Here is #{animal1}, and #{animal2}" }

