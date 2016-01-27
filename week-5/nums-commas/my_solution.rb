# Numbers to Commas Solo Challenge

# I spent [8.75] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

=begin
Input:  A positive number
Output: A comma separated number
Steps:
  Create an initial collection for each digit in the number and reverse it
  Create a start collection to prepare for modification of the digits
  Create an end collection to hold the modified digits
  Create a tracker to create a unique identifier
  FOR every digit in the initial collection
    Input the tracker position as the key and the digit as the value to the start collection
    Increment the tracker by 1 to so the identifier will be unique the second time around
  FOR every digit in the start collection
    IF the key can be divided evenly by 3 AND it's not the first key
      THEN add the value with a comma and put this into the end collection
    ELSE
      Put the existing value into the end collection
  RETURN the values for the end collection concatenated together in a string and reversed back to the original order
=end

# 1. Initial Solution

=begin
def separate_comma(number)
  array = number.to_s.split("").reverse
  start_hash = {}
  end_hash = {}
  position = 0
  array.each do |i|
    start_hash[position] = i
    position += 1
  end
  start_hash.each do |key,value|
    if key%3 == 0 && key != 0
      end_hash[key] = value + ","
    else
      end_hash[key] = value  
    end
  end
  end_hash.values.reverse.join
end
=end

# 2. Refactored Solution - Currently it's the same as Initial Solution. Without going to regex's I got stuck.

def separate_comma(number)
  # I would try to go from an integer directly to start_hash to eliminate the need for the first array
  array = number.to_s.split("").reverse
  start_hash = {}
  end_hash = {}
  position = 0
  # With the need for the first array eliminated, this each/do iteration is not necessary
  array.each do |i|
    start_hash[position] = i
    position += 1
  end
  # This each/do iteration would be the only necessary one
  start_hash.each do |key,value|
    if key%3 == 0 && key != 0
      end_hash[key] = value + ","
    else
      end_hash[key] = value  
    end
  end
  end_hash.values.reverse.join
end


# 3. Reflection

=begin
  
What was your process for breaking the problem down? What different approaches did you consider?
Ans: I first wanted to transform the integer into an array and work on it from there. I thought 
that it would be easiest to reverse it since the commas would be inserted every 3 digits. With 
the number reversed I could then focus on two problems 1 - Adding a comma after 3 digits and 2 -
What to do with the remaining digits. 

Was your pseudocode effective in helping you build a successful initial solution?
Ans: It was really helpful. Going forward I'll probably spend most of my time in pseudocode 
and then when I have it figured out I'll quickly build out the initial solution code. It's easy
for me to get sidetracked with other ideas when I go straight into code and then it turns into 
a trial and error process which is not ideal.

What new Ruby method(s) did you use when refactoring your solution? Describe your experience 
of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they 
significantly change the way your code works? If so, how?
Ans: I used .values for the first time in this solution. I find the documentation confusing at times
so I try to only go to it with a very specific question. I've found that constantly reminding myself
what each bit of code returns helps me to search for and use the right ones. I couldn't figure out 
how to get an integer directly into keys for an array, but I'll be researching that more :)

How did you initially iterate through the data structure?
Ans: I initially wanted to iterate through the array adding a comma directly to it where it was 
necessary and shifting the remaining digits. I found that to be extremely complex and spent a lot 
of time on it. My logic exploded into a tangled mess and I had to rethink my approach using hashes.

Do you feel your refactored solution is more readable than your initial solution? Why?
Ans: I wasn't able to improve much on my initial solution shown here. The process to arrive at an initial
solution was a long and winding road for me. I tried several initial solutions that would not even work so
I couldn't use them. Once I switched my approach to arrays it became significantly easier and I was able 
to create the initial solution shown above. I really struggled to improve on it during refactoring without 
going to regex's.
  
=end