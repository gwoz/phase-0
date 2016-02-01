# Die Class 2: Arbitrary Symbols

# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.


# Pseudocode

=begin
Input: The sides of a die
Output: The sides present on the die and a random side when rolled
Steps: 
  Create a new blueprint for a die that takes a collection of sides as input
  During creation of a new die
	IF the collection of sides provided is empty
	  THEN do not proceed and provide an error message
	ELSE
	  Create the new object
  To determine the number sides present on the die
  	THEN check the length of the collection
  To roll the die
  	THEN randomly choose a side from the collection
=end


# Initial Solution

=begin
class Die
  def initialize(labels)
  	if labels == []
  		raise ArgumentError.new("You must input the sides!")
  	else
  		@sides = labels
  	end
  end

  def sides
  	@sides.length
  end

  def roll
  	roll = @sides.sample
  end
end
=end


# Refactored Solution

class Die
  def initialize(labels)
  	if labels.empty?
  		raise ArgumentError.new("You must input the sides!")
  	else
  		@sides = labels
  	end
  end

  def sides
  	@sides.length
  end

  def roll
  	@sides.sample
  end
end


# Reflection

=begin
What were the main differences between this die class and the last one you created in terms 
of implementation? Did you need to change much logic to get this to work?
ANS: The main difference was how I determined how many sides were present and what the result
of rolling the dice would be. In last week's Die Assginment I could rely on the input being integers
which made the solution much easier. In this die assignment, the items were in an array and could be 
anything so the techniques I used had to be modified slightly.

What does this exercise teach you about making code that is easily changeable or modifiable? 
ANS: I'm starting to see how useful it will be to write code with consideration for more types of problems 
than just the immediate one you are building a solution for. I definitely compared this solution against the 
last one we did. If I built my last class for more scenarios I might have been able to re-use it as-is!

What new methods did you learn when working on this challenge, if any?
ANS: I learned the .empty? method and .sample method. The .empty? method returns true if there is nothing in the 
collection which worked great for my if statement. The .sample method worked well for returning a random value 
inside an array.

What concepts about classes were you able to solidify in this challenge?
ANS: I'm starting to really get the difference between a class and an object created by that class. Also, the instance
variables are starting to make more sense.

=end


