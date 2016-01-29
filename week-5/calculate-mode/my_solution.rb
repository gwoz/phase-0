# Calculate the mode Pairing Challenge

# I worked on this challenge [with: Ayaz Uddin/Mike Gwozdek]

# I spent [4.25] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.

# 0. Pseudocode

=begin
What is the input? A list of numbers
What is the output? The most frequent number(s) from the list
What are the steps needed to solve the problem?
  Create an empty target collection for the most frequent number(s)
  FOR every number in the list add it to the collection with an initial value of 0
  FOR every item in the collection compare it to the original list of numbers
    IF the item in the collection is equal to the number in the list
      THEN increment the frequency of the value by 1
  Sort the hash by frequency from least to most
  Delete the items from the collection that are not the most frequent
  Output the list with the most frequent number(s)
=end



# 1. Initial Solution

=begin
def mode(array)
 hash = {}
 array.each do |num|
   hash[num] = 0
 end
 hash.each do |key, value|
   array.each do |num|
     if key == num
       value += 1
       hash[key] = value
     end
   end
 end
 hash1 = hash.max_by do |k,v| v end
 var = hash1[1]
 hash = hash.delete_if do |k,v| v != var end
 new_array = hash.keys
end
=end



# 3. Refactored Solution

def mode(array)
 hash = {}
 new_array = []
 array.each do |num|
   hash[num] = 0 
 end
 
 hash.each do |key, value|
   array.each do |num|
     if key == num
       value += 1
       hash[key] = value
     end
    end
 end
 
hash.each { |k, v| new_array << k if v >= hash.values.max }
new_array
end




# 4. Reflection

=begin
Which data structure did you and your pair decide to implement and why?
Ans: We decided to use a hash. Since we were being asked to store each item and it's frequency, a key/value pair 
made the most sense to us. Once in an hash we could find the items based on the frequency of their value.

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
Ans: Yes, this was much easier. At first I don't think we knew exactly how to write pseudocode without using programming
language. This time around we knew how to frame the problem and solution in pseudocode form.

What issues/successes did you run into when translating your pseudocode to code?
Ans: We accidentally found a solution that allowed us to skip a few lines of our pseudocode. That ended up changing
the rest of the logic necessary to solve the problem. We thought that would be a quick adjustment, but it wasn't and we ended up 
spending a lot of time and effort on this.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
Ans: We used delete_if and max_by which were new methods to us. Delete_if allowed us to delete the keys from our hash that were not the most 
frequent. Max_by allowed us to determine the maximum value (most frequent) items in the list based on a key/value pair.
=end