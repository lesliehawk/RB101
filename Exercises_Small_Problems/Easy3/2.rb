# Arithmetic Integer

# Write a program that prompts the user for two positive integers, 
# and then prints the results of the following operations on those two numbers: 
# addition, subtraction, product, quotient, remainder, and power. 
# Do not worry about validating the input.

def prompt(str)
  puts "==> #{str}"
end

def calculate(num1, num2)
  prompt("#{num1} + #{num2} = #{num1 + num2}")
  prompt("#{num1} - #{num2} = #{num1 - num2}")
  prompt("#{num1} * #{num2} = #{num1 * num2}")
  prompt("#{num1} / #{num2} = #{num1 / num2}")
  prompt("#{num1} % #{num2} = #{num1 % num2}")
  prompt("#{num1} ** #{num2} = #{num1 ** num2}")
end

prompt("Enter the first number:")
first_num = gets.chomp.to_i

prompt("Enter the second number:")
second_num = gets.chomp.to_i

calculate(first_num, second_num)

# ==> 23 + 17 = 40
# ==> 23 - 17 = 6
# ==> 23 * 17 = 391
# ==> 23 / 17 = 1
# ==> 23 % 17 = 6
# ==> 23 ** 17 = 141050039560662968926103
