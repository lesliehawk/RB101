# Bannerizer

# Write a method that will take a short line of text, 
# and print it within a box.


def print_in_box(str)
  top_line = "+-#{"-" * str.size}-+"
  middle_line = "| #{" " * str.size} |"
  message_line = "| #{str} |"
  
  puts top_line
  puts middle_line
  puts message_line
  puts middle_line
  puts top_line
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')

#Further Exploration

# Modify this method so it will truncate the message 
# if it will be too wide to fit inside a standard terminal window 
# (80 columns, including the sides of the box). 

# For a real challenge, try word wrapping very long messages 
# so they appear on multiple lines, but still within a box.