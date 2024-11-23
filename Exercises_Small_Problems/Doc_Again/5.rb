# Multiple Signatures

a = %w(a b c d e)
puts a.fetch(7) #=> IndexError bc index 7 is out of bound of the array
puts a.fetch(7, 'beats me') #=> 'beats me' # default value bc above
puts a.fetch(7) { |index| index**2 } #=> 49 # when a block is given it
# will only be executed when an invalid index is reference