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

movies_with_animals = {
  lion: "lion king",
  deer: "bambi",
  fox: "fox and the hound"
}

movies_with_animals.each do |animal_type, movie|
  puts "The #{animal_type} is in the #{movie}"
end

puts "original:"
p movies_with_animals

modified_movies = movies_with_animals.map do |animal_type, movie|
  movie.capitalize
end

puts "hash after .map"
p modified_movies