# Odd Numbers

# Print all odd numbers from 1 to 99, inclusive, to the console, 
# with each number on a separate line.

#1 
(1..99).each { |n| puts n if n.odd? }
#2
1.upto(99) { |n| puts n if n.odd? }
#3
1.step(99, 2) { |n| puts n }
#4
n = 1
loop do
  puts n
  n += 2
  break if n > 99
end