# Palindromic Numbers

# Write a method that returns true 
# if its integer argument is palindromic, 
# false otherwise. 

# A palindromic number reads the same forwards and backwards.

def palindromic_number?(num)
  p num.to_s.chars
  p num.to_s.chars.reverse
  num.to_s.chars == num.to_s.chars.reverse
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true

p palindromic_number?(00034543000) # returns 940224...
# after further exploration, no it can't be done bc leading zeros 
# in Ruby create a different kind of number, an octal, and there 
# is not a way to eliminate this to work with the goal of a palindrome.