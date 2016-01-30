# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [1.5] hours on this challenge.

# 0. Pseudocode

=begin 
Input: The sides of a die
Output: A random number
Steps: 
 Create a new object call die
 IF there are less than six sides
 	THEN raise an error and do not proceed with creating the object
 ELSE create the object
 Set the sides based on the number input
 Output a random number from 1 to the number input
=end



# 1. Initial Solution
=begin
class Die
  def initialize(sides)
    if sides < 6
      raise ArgumentError.new("You must have at least 6 sides")
    else
      @sides = sides
    end
  end

  def sides
    sides = @sides
  end

  def roll
    roll = rand(1..@sides)
  end
end
=end


# 3. Refactored Solution

class Die
  def initialize(sides)
    if sides < 6
      raise ArgumentError.new("You must have at least 6 sides")
    else
      @sides = sides
    end
  end

  def sides
    @sides
  end

  def roll
    rand(1..@sides)
  end
end

# 4. Reflection
=begin
What is an ArgumentError and why would you use one?
Ans: An argument error allows you to return a message to the user. This is used to prevent creating and object 
that is not valid. For example, we raised an argument error during creation of our die since it can not have 
fewer than 6 sides. This could also be used to prevent someone frome inputting a string.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
Ans: I implemented rand and combined this with a range. The upper bound of the range is dynamically set based 
on the number of sides of the die. I did not have any issues with using this suprisingly! :)

What is a Ruby class?
Ans: A ruby class is a blueprint used to create objects.

Why would you use a Ruby class?
Ans: You would use a class to define what information an object will have and what it can do. We can use 
inheritance to build a heirarchy of information and capabilities for an object.

What is the difference between a local variable and an instance variable?
Ans: A local variable can only be accessed by a method while an instance variable can be accessed by an instance of 
the specifc object.

Where can an instance variable be used?
Ans: An instance variable can be used for a specific object. This is defined by the class and can hold information 
about that specific object. For example, all laptops will have a color property, but each laptop could have a different 
color that is stored as an instance variable.
=end



