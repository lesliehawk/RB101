# Parent Class

# modify this code to print just the public methods 
# that are defined or overridden by the String class? 
# That is, the list should exclude all members that are 
# only defined in Object, BasicObject, and Kernel.

s = 'abc'
# puts s.public_methods.inspect
puts s.public_methods(false).inspect

# public_methods(all=true) → array
# Returns the list of public methods accessible to obj. 
# If the all parameter is set to false, 
# only those methods in the receiver will be listed.