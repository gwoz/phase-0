# Concatenate Two Arrays

# I worked on this challenge [by myself, with: ].


# Your Solution Below

# Solution 1 - Passed 5 of 5 examples

=begin
def array_concat(array_1, array_2)
  new_array = []
  for i in array_1
  	new_array << i
  end
  for i in array_2
  	new_array << i
  end
  return new_array
end
=end

# Solution 2 - Passed 5 of 5 examples

def array_concat(array_1, array_2)
	array_1.concat(array_2)
end