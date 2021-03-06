class Santa
  attr_reader :ethnicity
  attr_accessor :age, :gender

  def speak
    puts "Ho, ho, ho! Haaaappy Holidays!"
  end
  
  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = rand(0..140)
      # chooses random age between 0-140
  end

  # setter method to take reindeer's name and move to end of array
  def get_mad_at(reindeer_name)
    @reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(@reindeer_ranking.index(reindeer_name)))
    # takes argument and deletes the index in array and inserts argument at the end of array
    p @reindeer_ranking
  end
end

santas = []
200.times do |x|
  santa = "Santa"
  santas << santa + rand(1..200).to_s
end

gender = ["male", "female", "transgender", "agender", "bigender", "N/A", "gender fluid"]
ethnicity = ["Puerto Rican", "French", "Thai", "Russian", "Black", "White", "Lao", "Mexican", "N/A", "Indian", "Australian", "German", "Polish"]

santas.each do |x|
  santa = Santa.new(gender.sample, ethnicity.sample)
  puts "Santa is #{santa.gender}."
  puts "Santa's ethnicity is #{santa.ethnicity}."
  puts "Santa is currently age #{santa.age}."
  santa.get_mad_at("Dasher")
end

# commenting out previous santa simulator for release 0, 1, 2, & 3
# santas = []
# genders = ["male", "female", "transgender", "agender", "female", "bigender", "N/A"]
# ethnicities = ["Puerto Rican", "French", "Thai", "Russian", "Black", "White", "Lao"]

# genders.length.times do |x|
  # puts "Adding new Santa.."
  # santas << Santa.new(genders[x], ethnicities[x])
# end

# santas.each do |x|
  # x.speak
  # x.eat_milk_and_cookies("snickerdoodle")
# end

# santas.each do |x|
  # x.age = 1
  # puts "Let's celebrate Santa's birthday! Santa is now age #{x.age}."
# end

# santas.each do |x|
  # x.get_mad_at("Vixen")
# end
# 
# santas.each do |x|
  # x.gender = "agender"
  # puts "Santa is #{x.gender}."
# end

# santas.each do |x|
  # puts "Santa is currently age #{x.age}."
# end

# santas.each do |x|
  # puts "Santa is #{x.ethnicity}."
# end