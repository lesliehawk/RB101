# Right Triangles

# Write a method that takes a positive integer, n, as an argument, 
# and displays a right triangle whose sides each have n stars. 
# The hypotenuse of the triangle (the diagonal side in the images below) 
# should have one end at the lower-left of the triangle, 
# and the other end at the upper-right.

# build an array of spaces - Array#new
# back-fill the stars into the array with each iteration - Array#each
# convert the array into a string - Array#join

def triangle(size)
  arr = Array.new(size, " ")
  arr.each_index do |i|
    arr[size - 1 - i] = "*"
    p arr.join
  end
end

triangle(5)
triangle(9)