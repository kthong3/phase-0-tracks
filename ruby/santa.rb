class Santa
  attr_reader :ethnicity
  # shortcut for getter methods

  attr_accessor :age

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

  # def celebrate_birthday=(new_age)
  #  @age = new_age
  # end

  # setter method to take reindeer's name and move to end of array
  def get_mad_at(reindeer_name)
    @reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(@reindeer_ranking.index(reindeer_name)))
    # takes argument and deletes the index in array and inserts argument at the end of array
    p @reindeer_ranking
  end

  def gender_change=(new_gender)
    @gender = new_gender
    # p @gender
  end

  # getter methods
  # def age
  # @age
  # end
  
  # def ethnicity
  #  @ethnicity
  # end
end

santas = []
genders = ["male", "female", "transgender", "agender", "female", "bigender", "N/A"]
ethnicities = ["Puerto Rican", "French", "Thai", "Russian", "Black", "White", "Lao"]

genders.length.times do |i|
  puts "Adding new Santa.."
  santas << Santa.new(genders[i], ethnicities[i])
end

santas.each do |x|
  x.speak
  x.eat_milk_and_cookies("snickerdoodle")
end

# check to see if setter methods worked
santas.each do |x|
  x.age = 1
  # x.celebrate_birthday = 1
  puts "Let's celebrate Santa's birthday! Santa is now age #{x.age}"
end
# ==> Let's celebrate Santa's birthday! Santa is now age 1.

santas.each do |x|
  x.get_mad_at("Vixen")
end
# ==> @reindeer_ranking=["Rudolph", "Dasher", "Dancer", "Prancer", "Comet", "Cupid", "Donner", "Blitzen", "Vixen"]

santas.each do |x|
  x.gender_change= "agender"
end
# ==> @gender="agender"

# check to see if getter methods worked
santas.each do |x|
  puts "Santa is currently age #{x.age}."
end
# ==> Santa is currently age 1.
# It changed to 1 since the setter method changed it

santas.each do |x|
  puts "Santa is #{x.ethnicity}."
end
# ==> Santa is Puerto Rican.
# ==> Santa is French.
# ==> Santa is Thai.
# ==> Santa is Russian.
# ==> Santa is Black.
# ==> Santa is White.
# ==> Santa is Lao.
