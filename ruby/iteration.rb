def print_animal
  puts "Welcome to animal lister"
  yield("Dog", "Cat")
 end

print_animal { |animal1,animal2| puts "Here is #{animal1}, and #{animal2}" }

animals = [
  "lion",
  "deer",
  "fox"]

animals.each do |animal_type|
 puts animal_type
end

puts "original data"
p animals

animals.map! do |animal|
  animal.capitalize
end

puts "after .map"
p animals
puts animals

movies_with_animals = {
  lion: "Lion King",
  deer: "Bambi",
  fox: "Fox and the Hound"
}