# Full name greeting
# Request user input for first, middle, and last name

puts "What's your first name?"
first_name = gets.chomp

puts "What's your middle name?"
middle_name = gets.chomp

puts "What's your last name?"
last_name = gets.chomp

#Display greeting

greeting = "Hello" + " " + first_name + " " + middle_name + " " + last_name + ", it's nice to meet you!\n"
puts greeting

#Bigger, better favorite number
# Request user input for favorite number

puts "What's your favorite number?"
favorite_number = gets.chomp


#Display a better number

better_number = favorite_number.to_i + 1
puts "That's a good number, but" + " " + better_number.to_s + " " + "seems like a better one!\n" 

=begin

4.3.1 Return a Formatted Address
https://github.com/gwoz/phase-0/blob/master/week-4/address/my_solution.rb

4.3.2 Defining Math Methods
https://github.com/gwoz/phase-0/blob/master/week-4/math/my_solution.rb

How do you define a local variable?
Ans: You define a local variable by declaring it within a method. A global variable would be defined outside of a method.

How do you define a method?
Ans: You define a method by using "def" + "method_name" + "(argument1, argument2)" for the first row. The next row(s) will contain the code that will execute when the method is called. The last row should use "end" to indicate the stopping point for the code. For example:
	
	def method_name(argument1,argument2)
		Some code here!
	end

What is the difference between a local variable and a method?
Ans: A local variable is declared within a method. The local variable is used as a placeholder for the code that is executing within the method to use. For example, a very basic averaging method will take two arguments such as 55 and 30. A local variable can be declared to hold the sum of the two arguments of 85 before dividing the sum by 2.

How do you run a ruby program from the command line?
Ans: You run a ruby program from the command line by typing "ruby" + "filename.rb". For example:
	ruby my_solution.rb

How do you run an RSpec file from the command line?
Ans: You run an RSpec file from the command line by typing "rspec" + "filename_spec.rb". For our assignments, this will look for our solution file and validate/invalidate our code, but in the future we can design our own tests using RSpec. For example:
	rspec math_methods_spec.rb

What was confusing about this material? What made sense?
Ans: I wasn't too confused with the material. At times I was confused with the instructions about whether we should be returning a value or printing it to the console. Every character matters so I'll have to be really meticulous with folling instructions going forward!

=end


