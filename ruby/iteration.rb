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

numbers = [1, 2, 3, 4]
numbers.delete_if { |number| number <= 2 }
puts numbers

numbers = [1, 2, 3, 4]
numbers.keep_if { |number| number >= 2 }
puts numbers

numbers = [1, 2, 3, 4]
puts numbers.select { |number| number.odd? }

numbers = [1, 2, 3, 4]
puts numbers.take_while { |number| number < 3 }


numbers = {
	"one" => "1",
	"two" => "2",
	"three" => "3",
	"four" => "4"
}

numbers.delete_if { |word, digit| word == "two" }
puts numbers

numbers = {
	"one" => "1",
	"two" => "2",
	"three" => "3",
	"four" => "4"
}
numbers.keep_if { |word, digit| word == "two" }
puts numbers

numbers = {
	"one" => "1",
	"two" => "2",
	"three" => "3",
	"four" => "4"
}
puts numbers.select { |word, digit| word == "two" }

numbers = {
	"one" => "1",
	"two" => "2",
	"three" => "3",
	"four" => "4"
}
puts numbers.reject { |word, digit| digit == "3" }



