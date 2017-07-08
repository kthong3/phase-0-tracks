class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  
  def speak(num) 
    puts "Woof " * num 
  end 

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(hum_years)
    dog_years= hum_years * 7
    puts "#{dog_years} years old"
  end

  def high_five
    puts "*high fives*"
  end

  def initialize
    puts "initializing new puppy instance.."
  end
  # When running the code, the method initialize does run. 
  # It will run on top of all the other methods in the Puppy class. 
  # It will not run and will not provide error message.
  # accidentally misspelling "initialize" has cost many DBC students hours of their lives!

end

spot = Puppy.new
spot.fetch("ball")  # ==> "I brought back the ball" 
spot.speak(4)       # ==> "Woof Woof Woof Woof"
spot.roll_over      # ==> *rolls over*
spot.dog_years(10)  # ==> "70 years old"
spot.high_five      # ==> *high fives*


class Cat

          def meow 
            puts "*meows*"
          end 
          
          def licks 
            puts "*licks*"
          end 
        
          def initialize
            puts "initializing new cat instance.."
          end
end 


cat_count = 0 
cat_name = ""
cat_array = []

until cat_count == 50 
  cat_name = "cat" + cat_count.to_s
  cat_array << cat_name
  cat_count += 1
end

p cat_array

cat_array.each do |x, cat_new|
  puts x
  cat_new = Cat.new 
  cat_new.meow
  cat_new.licks
end