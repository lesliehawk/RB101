# What would you expect the code below to print out?

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers
# 1
# 2
# 2
# 3

# numbers.uniq is non-mutating 
# => numbers continues to hold the arr with values [1, 2, 2, 3]
# which puts outputs as string values to the screen