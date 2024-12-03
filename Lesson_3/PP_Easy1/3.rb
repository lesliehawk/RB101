# Replace the word "important" with "urgent" in this string:

advice = "Few things in life are as important as house training your pet dinosaur."

# arr = advice.split

# arr[6] = "urgent"

# p advice = arr.join(" ")

p advice.gsub("important", "urgent")

# or 

p advice.gsub!("important", "urgent") #mutates `advice`
