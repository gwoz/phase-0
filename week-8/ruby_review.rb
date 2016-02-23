# PezDispenser Class from User Stories

# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.


# 1. Review the following user stories:
# - As a Pez user, I'd like to be able to "create" a new Pez dispenser with a group of flavors that
#      represent Pez so it's easy to start with a full Pez dispenser.
# - As a Pez user, I'd like to be able to easily count the number of Pez remaining in a dispenser
#      so I can know how many are left.
# - As a Pez user, I'd like to be able to take a Pez from the dispenser so I can eat it.
# - As a Pez user, I'd like to be able to add a Pez to the dispenser so I can save a flavor for later.
# - As a Pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order
#      of the flavors coming up.


# Pseudocode

=begin
Create Pez dispenser
  Input: Pez flavors
  Output: A new Pez dispenser with those Pez flavors
  Steps: Create new blueprint for a Pez dispenser and store the flavors that were input

Count Pez remaining
  Input: N/A
  Output: Number of Pez remaining
  Steps: Create a method to count the number of Pez remaining and display the number

Take a Pez
  Input: N/A
  Output: Take out the last Pez in the dispenser
  Steps: Create a method to remove the last Pez from the dispenser

Add a Pez
  Input: A new Pez
  Output: N/A
  Steps: Create a method to add the new Pez to the end of the dispenser

See all Pez
  Input: N/A
  Output: All Pez inside the dispenser
  Steps: Create a method to display the Pez in the dispenser
=end


# class PezDispenser
  
#   def initialize(contents)
#     @contents = contents
#   end
  
#   def pez_count
#     @contents.count
#   end
    
#   def get_pez
#     @contents.pop
#   end
  
#   def add_pez(new_pez)
#     @contents.push(new_pez)
#   end
  
#   def see_all_pez
#     @contents  
#   end
  
# end


# Refactored Solution

class PezDispenser
  
  attr_reader :contents, :number
 
  def initialize(contents)
    @contents = contents
    @number = @contents.count
  end
    
  def get_pez
    @contents.pop
  end
  
  def add_pez(new_pez)
    @contents.push(new_pez)
  end

end

# DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
puts "Here's a look inside the dispenser:"
puts super_mario.see_all_pez
puts "Adding a banana pez."
super_mario.add_pez("banana")
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"




# Reflection
=begin
What concepts did you review or learn in this challenge?
ANS: I reviewed creating classes with attribute readers. After spending the last week and half with
JS I was suprised how much of the syntax I forgot!

What is still confusing to you about Ruby?
ANS: The enumerables are still not 100% clear to me.

What are you going to study to get more prepared for Phase 1?
ANS: I plan to study the built-in methods that Ruby offers especially around Enumerables. I've been hitting
a wall with how best to layout/design my programs, but I feel like this is something we will focus on during 
Phase 1. Learning how to use the many tools available in Ruby over the next two weeks will be the best use 
of time for me.

=end




# Reverse Words


# I worked on this challenge [by myself].
# This challenge took me [0.5] hours.

# Pseudocode
=begin
INPUT: A sentence
OUTPUT: The sentence with each word reversed
STEPS:
  Split the sentence into an index of an array when a space is encountered
  reverse each word in the array 
  Join the words in the array together with a space in between each word
=end


# Initial Solution
my_sentence = "I like walking to work"
p my_sentence.split(" ").map {|word| word.reverse}.join(" ")

# Refactored Solution

puts "Type a sentence!"
sentence = gets.chomp
sentence.split(" ").map {|word| word.reverse}.join(" ")

# Reflection






# Numbers to English Words


# I worked on this challenge [by myself].
# This challenge took me [0.5] hours.


# Pseudocode
=begin
INPUT: Number
OUTPUT: Number in english
STEPS:
  IF number is less than 20 
    WHEN 1 then "One"
    ...
    WHEN 19 then "Nineteen"
  IF number is greater than 20 and less than 30
    WHEN 20 to less than 30 combine "Twenty" and use the same method for the last digit
  ...
  IF number is greater than 100 and less than 1000
    THEN "One Hundred" and use the same method for the last two digits
  IF number is greater than 1000 and less than 10,000
    THEN "One Thousand" and use the same method for the last three digits
  IF number is greater than 10,000 and less than 1,000,000
    THEN use the same method for the first two digits plus "Thousand" 
=end


# Initial Solution




# Refactored Solution






# Reflection