# Loan_Calculator.rb

# Build a loan calculator (mortgage or car, it's the same thing).
# You'll need three pieces of information:

# 1. the loan amount [x]
# 2. the Annual Percentage Rate (APR) [x]
# 3. the loan duration [x]

def prompt(str)
  puts "=> #{str}"
end

prompt("Welcome to Loan Calculator!")
prompt("Please enter the loan amount (ex. 100000 = $100,000):")
loan_amount = gets.chomp.to_i
prompt("Please enter the Annual Percentage Rate (APR):")
apr = gets.chomp.to_f / 100
prompt("Please enter the loan duration in months:")
loan_duration = gets.chomp.to_i

# From the above, you'll need to calculate the following two things:

# 1. monthly interest rate (APR / 12)
monthly_int_rate = apr / 12

# 2. loan duration in months
p loan_duration

# You can use the following formula:

# m = p * (j / (1 - (1 + j)**(-n)))

# m = monthly payment
# p = loan amount
# j = monthly interest rate
# n = loan duration in months

monthly_payment = loan_amount * (monthly_int_rate / (1 - ((1 + monthly_int_rate)**(-loan_duration))))

prompt("$#{loan_amount} at #{apr * 100}% interest over #{loan_duration} months")
prompt("= $#{monthly_payment.round(2)}/month")

# When you write your program,
# don't use the single-letter variables m, p, j, and n;
# use explicit names. [x]
# For instance, you may want to use loan_amount instead of p.

# Finally, don't forget to run your code through Rubocop.

# Hints:

# Figure out what format your inputs need to be in.
# For example, should the interest rate be expressed as 5 or .05,
# if you mean 5% interest? [x]

# If you're working with Annual Percentage Rate (APR),
# you'll need to convert that to a monthly interest rate. [x]

# Be careful about the loan duration --
# are you working with months or years? months [x]

# Choose variable names carefully to assist in remembering. [x]
# You can use this loan calculator to check your results:
# https://www.calculator.net/loan-calculator.html?cloanamount=100%2C000&cloanterm=0&cloantermmonth=12&cinterestrate=6&ccompound=monthly&cpayback=month&x=Calculate&type=1#monthlyfixedr
