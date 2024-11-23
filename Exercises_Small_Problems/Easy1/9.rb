# Get Middle Character

# Write a method that takes a non-empty string argument, 
# and returns the middle character or characters of the argument. 
# If the argument has an odd length, 
# you should return exactly one character. 
# If the argument has an even length, 
# you should return exactly two characters.

# def center_of(str)
#   length = str.size
#   if length.odd?
#     index = (length + 1) / 2
#     str[index-1]
#   else
#     index = length / 2
#     str[index-1]+ str[index]
#   end
# end

# refactored
def center_of(str)
  index = str.size / 2
  str.size.odd? ? str[index] : str[index - 1, 2]
end

puts center_of('I love Ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'
