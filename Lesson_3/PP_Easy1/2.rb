# Describe the difference between ! and ? in Ruby. 
# And explain what would happen in the following scenarios:

# what is != and where should you use it?
# != "does not equal" in conditional statements

# put ! before something, like !user_name
# !user_name, returns the opposite of the truthy or falsey value of user_name
# ex.if user_name == true, !user_name would == false

# put ! after something, like words.uniq!
# bang operator (!) at the end of a method name usually indicates the method is destructive and will mutate the caller

# put ? before something
# ? before something usually would be in a ternary operation (shorthand if/else statement)

# put ? after something
# ? after something... usually a method that will return a boolean

# put !! before something, like !!user_name
# !!user_name will return the double opposite of the truthy or falsey value of user_name
