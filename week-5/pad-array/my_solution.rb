# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode
# NON-DESTRUCTIVE
# What is the input? NON-DESTRUCTIVE: array of non-neg integer, minimum number, and default value
# What is the output? NON-DESTRUCTIVE: New array with at least minimum length
# What are the steps needed to solve the problem?
# create container to accept input values
# create empty container for output
# if array is equal to length return array
# then set output equal to input array
# if container is less than minimum number, set default value for empty positions
# then set output equal to the array + default values up to minimum length

#DESTRUCTIVE MUHAHAHAHAHA
# What is the input?
# What is the ou
# Steps:
=begin
 FOR each value in the original array
  UNTIL we've reached the minimum size
    IF there is a value in that position
      THEN return the same value
    ELSE 
      RETURN the placeholder
=end


# 1. Initial Solution

def pad!(array, min_size, value = nil) #destructive
  if array.length >= min_size
    return array
  elsif array.length < min_size
    counter = 0
    until counter == min_size do
      if counter >= array.length
        array[counter] = value
        counter += 1
      elsif counter <= min_size
        array[counter] = array[counter]
        counter += 1
      end
    end
  end
  return array.map! {|x| x }
end

 

def pad(array, min_size, value = nil) #non-destructive
  input = array
  output = []
  if input.length >= min_size
    return input
  elsif input.length < min_size
   counter = 0
   until counter == min_size do 
    if counter >= input.length
      output << value
      counter += 1  
    elsif counter <= min_size
      output << input[counter] 
      counter += 1
    end     
   end
  end
  return output
end 

# 3. Refactored Solution



# 4. Reflection