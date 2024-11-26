# How big is the room?

# Build a program that asks a user for 
# the length and width of a room in meters 
# and then displays the area of the room 
# in both square meters and square feet.

# Note: 1 square meter == 10.7639 square feet

# Do not worry about validating the input at this time.

# Example:
# Enter the length of the room in meters:
# 10
# Enter the width of the room in meters:
# 7
# The area of the room is 70.0 square meters (753.47 square feet).

SQ_M_to_SQ_FT = 10.7639

def sq_meters(l, w)
  (l * w).round(2)
end

def sq_feet(l, w)
  (sq_meters(l, w) * SQ_M_to_SQ_FT).round(2)
end

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

puts "The area of the room is #{sq_meters(length, width)} square meters (#{sq_feet(length, width)} square feet)."