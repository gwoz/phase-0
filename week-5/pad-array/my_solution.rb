# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode
=begin
What is the input? Array of non-negative integer, minimum length, and default value
What is the output? New array with at least minimum length where empty positions are
replaced with the default value
What are the steps needed to solve the problem?
create container to accept input values
create empty container for output
if array is equal to length return array
then set output equal to input array
if container is less than minimum number, set default value for empty positions
then set output equal to the array + default values up to minimum length
=end

# 1. Initial Solution

def pad!(array, min_size, value = nil) #destructive (Passes all tests)
  if min_size <= array.length
    Array.new(array)
  elsif min_size > array.length
    placeholders_needed = (min_size - array.length)
    placeholder_array = Array.new(placeholders_needed, value)
    new_array = array.map! {|number| array.any? ? number : value}
    new_array = new_array.concat(placeholder_array)
  end
end

def pad(array, min_size, value = nil) #non-destructive (Fails non-destructive test only)
  output = []
  if array.length >= min_size
    return array
  elsif array.length < min_size
   counter = 0
   until counter == min_size do 
    if counter >= array.length
      output.insert(counter,value)
      counter += 1  
    elsif counter <= min_size
      output.insert(counter,array[counter])
      counter += 1
    end     
   end
  end
  p array.object_id #Original Object ID
  p output.object_id #New Object ID
  return output
end 

# 3. Refactored Solution

# We were unable to create a working initial solution and did not have time to refactor. Our initial 
# solution for the destructive method includes much of what we learned during troubleshooting both.


# 4. Reflection
=begin
Were you successful in breaking the problem down into small steps?
Ans: We were intitially successful and thought we understood the problem, but were unable to solve for the 
non-destructive method.

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties 
and successes did you have?
Ans: Initially we were able to do so and created a solution that appeared to solve the problem for both methods. 
However we could not figure out why we were failing tests that indicated our array object_id was changing for the 
non-destructive methods.

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, 
what were the errors you encountered and what did you do to resolve them?
Ans: No, our intitial solution was not successful. We struggled with determining how to meet the requirements while 
not changing the object_id for the non-destructive method. We tried several ways to manipulate the original array without
a change to the object_id, but ultimately we kept failing one test.

When you refactored, did you find any existing methods in Ruby to clean up your code?
And: We learned several new methods through troubleshooting, but ultimately could not refactor.

How readable is your solution? Did you and your pair choose descriptive variable names?
Ans: Our solution has descriptive variable names and we think our code is readable, although we know there is a lot 
that could be improved on.

What is the difference between destructive and non-destructive methods in your own words?
Ans: Destructive methods will change the original object and non-destructive methods will only display a transformation 
of the original object without actually changing it.

=end




