# The Ruby Array class has several methods for removing items from the array. 
# Two of them have very similar names. Let's see how they differ:



# What do the following method calls do 
# (assume we reset numbers to the original array between method calls)?

numbers = [1, 2, 3, 4, 5]
p numbers.delete_at(1)
#=> 2
numbers
#=> [1, 3, 4, 5]

# deletes the element at the specified index
#=> returns that element, or nil if the index is out of range.

numbers = [1, 2, 3, 4, 5]
p numbers.delete(1)
#=> 1
numbers
#=> [2, 3, 4, 5]

# deletes all items from self that are equal to object
#=> returns the last deleted item, or il if no matching item is found.
# (If the optional code block (not shown here) is given,
# the result of the block is returned if the item is not found.)
