# Build a simple guessing game

# I worked on this challenge [by myself].
# I spent [1.75] hours on this challenge.


# Pseudocode

=begin
Input: A number for the answer
Output: An indication of whether a guess is too low, too high, or correct
Steps:
  Create a new blueprint for a guessing game
    IF there is no answer provided
      THEN provide an error and do not proceed
    ELSE
      Set the guessing game answer to the number that's input
      Create an empty placeholder for the last guess
      Create an empty placeholder for the current guess
  
  Create a way to assess the current guess
    Set the number input to the current guess
    IF the current guess is LESS than the answer
      THEN respond with LOW, set the last guess equal to the current guess, check whether it's solved
    IF the guess EQUALS the answer
      THEN respond with CORRECT, set the last guess equal to the current guess, check whether it's solved
    IF the guess is GREATER than the answer
      THEN respond with HIGH, set the last guess equal to the current guess, check whether it's solved
  
  Create a way to indicate whether the guessing game is over
    Set the placeholder to false
    IF the current guess EQUALS the answer
      THEN indicate game over
    ELSE game is not over
=end


# Initial Solution

=begin
class GuessingGame
  def initialize(answer)
    if answer == nil
      raise ArgumentError.new("You must input an answer first!")
    else
      @answer = answer
      @last_guess = nil
      @current_guess = nil
    end
  end
  
  def guess(input)
    @current_guess = input
    if @current_guess < @answer
      return :low
      @last_guess = @current_guess
      solved?
    elsif @current_guess == @answer
      return :correct
      @last_guess = @current_guess
      solved?
    elsif @current_guess > @answer
      return :high
      @last_guess = @current_guess
      solved?
    end
  end
    
  def solved?
    game_over = false
    if @current_guess == @answer
      game_over = true
    else
      game_over = false
    end
  end
end
=end


# Refactored Solution

class GuessingGame
  def initialize(answer)
    if answer == nil
      raise ArgumentError.new("You must input an answer first!")
    else
      @answer = answer
      # Removed initialization of instance variables with nil value
      # Not sure if that's a great idea, but researching more on this
    end
  end
  
  def guess(input)
    @current_guess = input
    if @current_guess < @answer
      return :low
    elsif @current_guess == @answer
      return :correct
    elsif @current_guess > @answer
      return :high
    end
    # Consolidated setting of last guess to current guess game over check
    @last_guess = @current_guess
    solved?
  end
    
  def solved?
    game_over = false
    if @current_guess == @answer
      game_over = true
    else
      game_over
    end
  end

end


# Reflection

=begin
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
ANS: Instance variables are like your individual personality traits and methods are like the things 
you do every day. Everyone tends to have an outlook on life such as pessimistic or optimistic; the classic 
glass half full vs half empty. We do a lot of different things every days like driving to work, grocery shopping or 
texting. Personality traits play a part in all of the thing you do every day much like instance variables can play a 
part in the methods and their outcomes.


When should you use instance variables? What do they do for you?
ANS: Instance variables are used to store information about an object that's been created by a class. You should use 
them when you need to access the same information during method calls or for another object to be able to reference them.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
ANS: Flow control is used to yield control of your program to certain pieces of code only if specific criteria or met. This 
allows you to make your programs more dynamic. I didn't struggle too much with it. I would like to learn more about more 
efficient flow control implementation techniques and plan to do some further research.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?
ANS: I'm not 100% clear on this concept yet. It sounds like symbols are more efficient with memory usage since each time 
you create a variable it's stored in a table for later reference. However with symbols, this does not occur. More research
needed here.
=end

