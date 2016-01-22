# Count Between

# I worked on this challenge [myself].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

#Pseudocode
=begin
Input: A list of numbers, the lower bound, and the upper bound
Output: How many numbers in the list are between the lower and upper bounds
Steps:
IF the list is empty 
THEN the result should be 0
IF the list is not empty
THEN count all of the numbers between the lower and upper bounds
=end

# Your Solution Below

# Initial Solution - Passed 2 of 6
=begin
def count_between(list_of_integers, lower_bound, upper_bound)
  	if list_of_integers = []
  		return 0
  	else
  		count = 0
  		for i in list_of_integers
  			if i >= lower_bound && i <= upper_bound
  			count += 1
  			end
  		return count
  		end
  	end
end
=end

#Refactor Solution - Passed 6 of 6
def count_between(list_of_integers,lower_bound,upper_bound)
	list_of_integers.count {|i| i >= lower_bound && i <= upper_bound}
end