# Numbers to Commas Solo Challenge

# I spent [4] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode
=begin
Input:  A positive number
Output: A comma separated number
Steps:
  Break out the number to a collection of each individual digits
  Put every 3 digits into a hash
  If there aren't three digits to put into the hash, just put what's left into the hash
  Combine them together with a comma to separate each entry to the hash
=end

# 1. Initial Solution

def separate_comma(number)
  array = number.to_s.split("").reverse
  string = number.to_s
  new_array = []
  counter = 0
  position = 0
  array.each do |i|
    if counter == 3
      new_array.insert(position,",")
      position += 1
      counter = 0
    elsif  
      counter < 3
      new_array[position] = array[position]
      position +=1
      counter += 1
    end
  end
  return new_array.join("").reverse
end
  
p separate_comma(12811)
# 2. Refactored Solution




# 3. Reflection