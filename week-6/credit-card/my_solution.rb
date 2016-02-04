# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [with: Michael Wang ].
# I spent [2] hours on this challenge.

# Pseudocode

=begin
Input: 16 character credit card number
Output: Match or no match of card number
Steps:
If the number is 16 digits then proceed, ELSE raise an error
First break the numbers into an array
Each index will correspond to one number

Method 1
IF the index of the array is odd
 THEN double the number
ELSE do nothing to the number

Method 2
Split every number in the array into an array of single digits
Add every digit in the array into the sum

Method 3
Divide the sum of the digits
IF divisible by 10 THEN valid card number
ELSE NOT valid card number
=end


# Initial Solution

=begin
class CreditCard
  
  attr_reader :total
  
  def initialize(card_number)
    if card_number.to_s.length != 16
      raise ArgumentError.new("Credit card number length not valid!")
    else
      @card_number = card_number.to_s.split("")
    end
  end
  
  def double
    @double_number = []
    @card_number.each_with_index do |num, i|
      if i.even?
        @double_number << num.to_i * 2
      else
        @double_number << num.to_i
      end
      
    end
    return @double_number
  end
  
  def sum
    # @double_number = @double_number.each {|x| x.to_s}
    # @singles = @double_number.join("").split("")
    # @total = 0
    # @singles.each {|x| @total += x.to_i }
    # return @total
    @singles = @double_number.join("").split("") 
    @singles.map! {|x| x.to_i}
    @sum = @singles.inject { |sum, n| sum + n }
    p @sum
    
  end
  
  def check_card
    if @sum % 10 == 0
      return true  
    else
      return false
    end
  end
  
end
=end


# Refactored Solution

class CreditCard
  
  attr_reader :total
  
  def initialize(card_number)
    if card_number.to_s.length != 16
      raise ArgumentError.new("Credit card number length not valid!")
    else
      @card_number = card_number.to_s.split("").map! {|x| x.to_i}
    end
  end
  
  def double
    @double_number = []
    @card_number.each_with_index do |num, i|
      if i.even?
        @double_number << num * 2
      else
        @double_number << num
      end
    end
  end
  
  def check_card
    double_number = []
    @card_number.each_with_index do |num, i|
      if i.even?
        double_number << num * 2
      else
        double_number << num
      end
    end
    singles = double_number.join("").split("") 
    singles.map! {|x| x.to_i}
    sum = singles.inject { |sum, n| sum + n }
      if sum % 10 == 0
        return true  
      else
        return false
      end
  end


end

#REFLECTION
=begin
What was the most difficult part of this challenge for you and your pair?
ANS: The mos difficult part was troubleshooting an issue where an instance variable 
was returning nil and that could not be evaluated by our check_card method. To solve it 
we consolidated two methods that we thought might be causing the issue and then it worked 
fine. We're researching more into this.

What new methods did you find to help you when you refactored?
ANS: We found inject which allowed us to keep a running total while addign up the numbers
of the credit card. We also used join and split pretty heavily, but we're not sure those are 
really the best solutions.

What concepts or learnings were you able to solidify in this challenge?
ANS: We were able to solidify the concept of creating instance variables as you need them. At 
first I was tempted to always declare each instance variable at the time of instantiation, but 
that expands your classes unnecessarily. I've learned to declare them when they are actually needed.
=end







# Reflection