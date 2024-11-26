# How old is Teddy?

# Build a program that randomly generates and prints Teddy's age. 
# To get the age, you should generate a random number between 20 and 200.

# Example Output:
# Teddy is 69 years old!

# Further Exploration:

def age
  rand(20..200)
end

def teddy(name, this_many)
  name = "Teddy" if name == ''
  puts "#{name} is #{this_many} years old!"
end

puts "What is your teddy's name?"
teddys_name = gets.chomp

teddy(teddys_name, age)