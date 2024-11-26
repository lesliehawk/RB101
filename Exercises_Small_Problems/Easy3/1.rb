# Searching 101


# ask for numbers
# add each number to an array

# last number to a variable

# check if last number is included in array

# print message 


arr_positionals = ["1st", "2nd", "3rd", "4th", "5th", "last"]

numbers_arr = arr_positionals.map do |pos|
  puts "Enter the #{pos} number:"
  num = gets.chomp.to_i
end

last_number = numbers_arr.pop

answer = numbers_arr.include?(last_number) ? "appears" : "does not appear"

puts "The number #{last_number} #{answer} in #{numbers_arr}."