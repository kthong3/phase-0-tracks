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

santa = "Santa" + rand(1..1000).to_s
gender = ["male", "female", "transgender", "agender", "bigender", "N/A", "gender fluid"]
ethnicity = ["Puerto Rican", "French", "Thai", "Russian", "Black", "White", "Lao", "Mexican", "N/A", "Indian", "Australian", "German", "Polish"]

santa = Santa.new(gender.sample, ethnicity.sample)
puts santa
puts "Santa is #{santa.gender}."
puts "Santa's ethnicity is #{santa.ethnicity}."
puts "Santa is currently age #{santa.age}."

santa = Santa.new(gender.sample, ethnicity.sample)
puts santa
puts "Santa is #{santa.gender}."
puts "Santa's ethnicity is #{santa.ethnicity}."
puts "Santa is currently age #{santa.age}."

