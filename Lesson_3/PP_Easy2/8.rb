# Shorten the following sentence:

advice = "Few things in life are as important as house training your pet dinosaur."

# Review the String#slice! documentation, 
# and use that method to make the return value 
# "Few things in life are as important as ". 
# But leave the advice variable as "house training your pet dinosaur.".

# As a bonus, what happens if you use the String#slice method instead?

advice.slice!(0..38)
# advice.slice!(0, advice.index('house')) # LS Solution
#=> "Few things in life are as important as "
p advice
#=> "house training your pet dinosaur."