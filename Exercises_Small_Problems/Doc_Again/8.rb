# Included Modules

# Find the documentation for the #min method 
# and change the above code to print 
# the two smallest values in the Array.

a = [5, 9, 3, 11]
puts a.min # 3

puts a.min(2)
# 3
# 5

# Module: Enumerable
# min(n) -> array
# Returns the object in enum with the minimum value. 
# The first form assumes all objects implement Comparable; 
# the second uses the block to return a <=> b.

# If the n argument is given, 
# minimum n elements are returned as an array.