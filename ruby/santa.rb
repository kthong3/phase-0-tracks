class Santa
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
    @age = 0
  end
end

santas = []
genders = ["male", "female", "transgender", "agender", "female", "bigender", "N/A"]
ethnicities = ["Puerto Rican", "French", "Thai", "Russian", "Black", "White", "Lao"]
genders.length.times do |i|
  santas << Santa.new(genders[i], ethnicities[i])
end

p santas