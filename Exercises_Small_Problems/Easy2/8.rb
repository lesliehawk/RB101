# Sum or Product of Consecutive Integers

# Write a program that asks the user to enter an integer greater than 0, 
# then asks if the user wants to determine the sum or product 
# of all numbers between 1 and the entered integer.

# Examples:

# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.


# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.

def prompt(str)
  puts ">> #{str}"
end

def compute_number(operator, num)
  num_arr = (1..num).to_a
  if operator == 's'
    num_arr.inject(:+)
  elsif operator == 'p'
    num_arr.inject(:*)
  end
end

def operator_str(operator)
  operator == 's' ? "sum" : "product"
end    


prompt("Please enter an integer greater than 0:")
number = gets.chomp.to_i

operation = String.new
loop do
  prompt("Enter 's' to compute the sum, 'p' to compute the product.")
  operation = gets.chomp
  break if operation == "s" || operation == "p"
  prompt("Invalid input.")
end

result = compute_number(operation, number)

prompt("The #{operator_str(operation)} of the integers between 1 and #{number} is #{result}.")

