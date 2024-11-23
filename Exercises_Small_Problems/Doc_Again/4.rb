# Mandatory Blocks

# How would you search this Array 
# to find the first element whose value exceeds 8?

a = [1, 4, 8, 11, 15, 19]

p a.bsearch {|x| x > 8} # using find-minimum mode of Array#bsearch
