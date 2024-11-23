# Madlibs
# Create a simple mad-lib program 
# that prompts for a noun, a verb, an adjective, and an adverb 
# and injects those into a story that you create.

# Enter a noun: dog
# Enter a verb: walk
# Enter an adjective: blue
# Enter an adverb: quickly

# Do you walk your blue dog quickly? That's hilarious!

words = ["noun", "verb", "adjective", "adverb"]

answers = words.map do |word|
  puts "Enter a #{word}:"
  answer = gets.chomp
end

puts "Do you #{answers[1]} your #{answers[2]} #{answers[0]} #{answers[3]}? That's hilarious!"
