# Palindromic Strings (Part 1)

# Write a method that returns true 
# if the string passed as an argument is a palindrome, 
# false otherwise. 

# A palindrome reads the same forward and backward. 
# For this exercise, case matters as does punctuation and spaces.

def palindrome?(chars)
  # str = chars.dup
  # arr = []
  # until str.empty?
  #   arr << str[-1]
  #   str.chop!
  # end
  # chars_arr = arr.join
  # chars_arr == chars
  word == word.reverse
end

p palindrome?('madam') == true            # palindrome
p palindrome?('Madam') == false           # not a palindrom bc case matters
p palindrome?("madam i'm adam") == false  # not bc all characters matter)
p palindrome?('356653') == true           # palindrome
