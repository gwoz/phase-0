
# Factorial

# I worked on this challenge [with: David Lange].

#Pseudocode
=begin
Input: Any positive number without decimal places
Output: Mulitplication of every number from 1 to that positive number
Steps:
Make container for the current number being evaluated
Make container for the running product set to 1
IF the current number is less than 1 
THEN return 1
END
IF the current number is greater than 1 AND less than the number given
THEN multiply the current number against the running product
END
Return the running product
=end

# Your Solution Below
=begin
def factorial(number)
	if number <= 1
		return 1
	elsif number >= 2
		current_number = 1
		running_product = 1
		number.times do
			running_product *= current_number
			current_number += 1
		end
		return running_product
	end
end
=end

#refactor
def factorial(number)
	sum = 1
	sum.upto(number) { |n| sum *= n }
	return sum
end