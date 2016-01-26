# Numbers to Commas Solo Challenge

# I spent [1] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? A positive number
# What is the output? (i.e. What should the code return?) A comma separated integer
# What are the steps needed to solve the problem?
=begin

Summary
Make a collection of every three digits in a hash (backwards?)
If there aren't three digits to put into the hash, just put what's left into the hash
Combine them together with a comma to separate each entry to the hash

No time limit
Create an empty hash
UNTIL there is at least one digit but less than 3 digits remaining
  COUNT 3 digits from right to left
    WHEN 3 digits reached starting from the right and working left
      Create a new entry with a key corresponding to the number of entries made and the value of the 3 digits
    ELSE Less than 3 digits remain
  	  Return each entry with a comma between them AND converted to an integer
=end

# 1. Initial Solution
=begin
def separate_comma(number)
  to_comma_separate = {}
  number_position = 0
  number.each do |x|
  	  counter = 0
      to_add = 0
      if counter <= 3
        to_add << x
        number_position += 1
        counter += 1
  	  elsif counter == 3
        to_comma_separate << [number_position, to_add]
        counter = 0
        to_add = 0
      end
  puts to_comma_separate.join(",")
end
end
=end

def separate_comma(number)
  #create array
  number.to_s.to_a
  number.each do |x|
    puts x
  end
end

separate_comma(1000)

# 2. Refactored Solution




# 3. Reflection