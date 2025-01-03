# Stringy Strings

# Write a method that takes one argument, 
# a positive integer, 
# and returns a string of alternating 1s and 0s,
# always starting with 1. 
# The length of the string should match the given integer.

def stringy(int)
  str_num = ""
  (int/2).times { str_num << "10" }
  str_num << "1" if int.odd?
  str_num
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# Further Exploration:
# Modify stringy so it takes an additional optional argument 
# that defaults to 1. 
# If the method is called with this argument set to 0, 
# the method should return a String of alternating 0s and 1s, 
# but starting with 0 instead of 1.

def stringy2(int, start = 1)
  str_num = (start == 0 ? "0" : "")
  (int/2).times { str_num << "10" }
  str_num << "1" if start == 1 && int.odd?
  str_num.slice!(-1) if start == 0 && int.even?
  str_num
end

puts stringy2(6, 0) == '010101'
puts stringy2(9, 0) == '010101010'
puts stringy2(4, 0) == '0101'
puts stringy2(7, 1) == '1010101'
