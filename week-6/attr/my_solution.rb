#Attr Methods

# I worked on this challenge [by myself]

# I spent [2] hours on this challenge.

# Pseudocode
=begin
------------------------------------------

Input: A name
Output: A greeting with the name
Steps: 
  Create a blueprint for a name
    Allow read-only access to name
    Store the same name each time the blueprint is used

  Create a blueprint for a greeting
    Set your greeting equal to the name of a new person
    Create a proper greeting
      Display a greeting that includes the name of the new person that was created

------------------------------------------      
=end

# Initial Solution

class NameData
  
  attr_reader :name
  
  def initialize
    @name = "Mike"
  end
  
end


class Greetings
  
  def initialize
    @greeting = NameData.new
  end
  
  def salutation
    puts "Hi #{@greeting.name}, it's nice to meet you!"
  end
  
end


# Reflection

=begin
------------------------------------------

Release 1: Read and Research

What are these methods doing?
ANS: These methods are displaying the the instance variables or changing the instance variables. 
In the "what_is..." methods we are simply returning the instance variable that already exists. In the 
"change_my.." methods we are changing the instance variable.

How are they modifying or returning the value of instance variables?
ANS: They are modifying the instance variable by calling a method on the instance and providing the
new values. For example, in "change_my_age=(new_age)" we can use the sytnax "instance.change_my_age = 24"
to set the new value for the instance variable. They are returning the value of the instance variable by
using the instance variable. For example, to return the age for the instance variable we can use "@age".

------------------------------------------


Release 2: Identify the Changes

What changed between the last release and this release?
ANS: The attr_reader method was added with :age for an argument. The what_is_age method was removed.

What was replaced?
ANS: We replaced the need for the "what_is_age" method by including the :age as an attr_reader. This allows 
you to access the :age instance variable from outside the instance using "instance_of_profile.age" instead
of "instance_of_profile.what_is_age" which requires a method to be built. We could also do this for @name and
@occupation by using the following syntax: attr_reader :age, :name, :occupation

Is this code simpler than the last?
ANS: I think this code is much simpler. This eliminates the need to write methods that will only display 
instance variables.

------------------------------------------
	

Release 3: More Changes

What changed between the last release and this release?
ANS: We added the attr_writer method with :age for an argument. We were then able to remove the change_my_age 
method.

What was replaced?
ANS: We replaced change_my_age with the attr_writer method for :age which will do the same thing without requiring us 
to write any additional code.

Is this code simpler than the last?
ANS: Yes, I think this code is simpler than the last. Although it does look like we're repeating ourselves by 
using both an attr_reader AND and attr_writer for the same instance variable.

------------------------------------------


Release 4: Using attr_ methods

Refactored release_4.rb AND release_5.rb file (Duplicate in the assignment?) to use accessors instead of the methods 
that were initially created.

------------------------------------------


Release 5: Apply

Created solution in Initial Solution above

------------------------------------------



Release 6: Reflect

What is a reader method?
ANS: A reader method is defined in a class and allows specific instance variables to be viewed, but not changed from 
outside of the instance.

What is a writer method?
ANS: A writer method is defined in a class and allows specific instance variables to be changed from outside of the instance.

What do the attr methods do for you?
ANS: These allow you to define how other objects can interact with an instance variable. They also eliminate a lot of code that
would need to be written for viewing or changing an instance variable.

Should you always use an accessor to cover your bases? Why or why not?
ANS: You should only use an attr accessor when both reading and writing is acceptable from outside the object. By using 
accessor you eliminate the need to write a lot of code. This can be bad though because you lose some of the control over WHAT an 
instance variable can be changed to.

What is confusing to you about these methods?
ANS: I'm still a bit confused about WHEN we should implement one or the other. It seems like this will be something that will be 
solidified once we start seeing more use cases.

------------------------------------------

=end