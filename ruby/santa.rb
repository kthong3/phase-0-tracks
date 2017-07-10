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
  puts "Adding new Santa.."
  santas << Santa.new(genders[i], ethnicities[i])
end

santas.each do |x|
  puts "Santa is currently age #{x.age}"
end

santas.each do |x|
  x.celebrate_birthday = 1
  puts "Let's celebreat Santa's birthday! Santa is now age #{x.age}"
end