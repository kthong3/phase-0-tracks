count = 0

puts "How many employees will be processed today?"
  numberofemployees = gets.chomp.to_i

until count == numberofemployees
  # ask for vampire's name
  puts "What is your name?"
  name = gets.chomp
  
  # ask for vampire's age
  age = nil
  puts "How old are you?"
  age = gets.chomp
  
  year = nil
  puts "What year were you born?"
  year = gets.chomp
  
  valid_garlic_bread = false
  until valid_garlic_bread
    # ask if employee wants garlic bread
    puts "Our company cafeteria serves garlic bread."
    puts "Should we order some for you?"
    garlic_bread = gets.chomp.downcase
      if garlic_bread.downcase == "yes" || garlic_bread.downcase == "no"
        valid_garlic_bread = true
      else
        puts "I did not understand. Please type yes or no."
      end
  end
  
  valid_input_health = false
    until valid_input_health
    # ask if employee would like health insurance
    puts "Would you like to enroll in the company’s health insurance?"
    health_ins = gets.chomp.downcase
      if health_ins.downcase == "yes" || health_ins.downcase == "no"
        valid_input_health = true
      else
        puts "I did not understand. Please type yes or no."
      end
  end
  
  # find out if employee is vampire
  employeeisvampire = true
  while employeeisvampire
    if (age.to_i <= 120 && year.to_i >= 1900 && garlic_bread.downcase == "yes" && health_ins.downcase == "yes") && (name !=	"Drake Cula" && name != "Tu Fang")
    	puts "Probably not a vampire."
    	employeeisvampire = false
    elsif ((age.to_i >= 150 || year.to_i <= 1900) && garlic_bread.downcase == "no") || health_ins.downcase == "no"
    	puts "Probably a vampire."
    	employeeisvampire = false
    elsif age.to_i >= 150 && year.to_i <= 1900 && garlic_bread.downcase == "no" && health_ins.downcase == "no"
    	puts "Almost certainly a vampire."
    	employeeisvampire = false
    elsif name ==	"Drake Cula" || name == "Tu Fang"
    	puts "Definitely a vampire."
    	employeeisvampire = false
    else
    	puts "Results inconclusive."
    	employeeisvampire = false
    end
  end
  
  # print out employee information
  puts "The employee's name is #{name}."
  puts "He was born in #{year} and is #{age} years old."
  
  if garlic_bread.downcase == "yes"
    puts "The employee is willing to eat garlic bread."
  else
    puts "The employee is not willing to eat garlic bread."
  end
  
  if health_ins.downcase == "yes"
    puts "The employee has signed up for health insurance."
  else
    puts "The employee did not sign up for health insurance."
  end
  
  count += 1
  
  puts "Thank you for completing this survey."
end