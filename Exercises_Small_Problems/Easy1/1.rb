# Repeat Yourself

# Write a method that takes two arguments, 
# a string and a positive integer, 
# and prints the string as many times as the integer indicates.

def repeat(str, int)
  int.times { |x| puts str }
end

repeat('Hello', 3)

