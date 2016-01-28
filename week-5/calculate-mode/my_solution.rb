# Calculate the mode Pairing Challenge

# I worked on this challenge [with: Ayaz Uddin/Mike Gwozdek]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.

# 0. Pseudocode

=begin
What is the input? A list of numbers
What is the output? The most frequent number from the list
What are the steps needed to solve the problem?
  First convert the list from numbers to a string
  Create an empty collection for the numbers
  FOR every number in the list
    IF the number does not exist in the collection
      THEN add the number to the collection with a value of 1
    ELSE
      THEN increment the frequency of the number by 1
  Sort the hash by frequency from least to most
  Return the last number in the collection
=end



# 1. Initial Solution

def mode(array)
  list = array
  hash= {}
  list.each do |num|
    hash[num] = 0
  end
  
  hash.each do |key, value|
    list.each do |num|
      if key == num
        value += 1
        hash[key] = value
      end
    end
  end
   # hash_first = hash.values.sort.reverse
   # return hash_first[0]
  
  new_hash = hash.max_by do |k,v| v end
  return new_hash[0]
end



# 3. Refactored Solution




# 4. Reflection