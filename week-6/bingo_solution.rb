# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [5.25] hours on this challenge.


# Release 0: Pseudocode

=begin
Input: A bingo board layout
Output: A random number call, whether the bingo board has that number, and the current state of the bingo board
Steps: 
Create a method to randomly generate a letter ( b, i, n, g, o) and a number (1-100)
  Randomly select a letter from b, i, n, g, or o for the call letter
  Compare the call letter to the column list and store the corresponding column number
  Randomly select a number from 1-100 for the call number
  Display the number called back to the user

Check the called column for the number called.
  IF the call number is found in the call column
    THEN for that row replace the call number with an X and make no changes to the rest
  ELSE the call number is NOT found in the call column 
    THEN make no changes to that row

Display the board to the console (prettily)
  Display each row of the current state of the bingo board on a new line

Test
  Repeatedly use the call and check methods to play millenial bingo at hyperspeed!
=end


# Initial Solution

=begin
class BingoBoard
  
  def initialize(board)
    @bingo_board = board
  end

  def call
    #Use sample and return index
    @call_letter = ["B","I","N","G","O"].sample
    
    if @call_letter == "B"
      @call_column = 0
    elsif @call_letter == "I"
      @call_column = 1
    elsif @call_letter == "N"
      @call_column = 2
    elsif @call_letter == "G"
      @call_column = 3
    elsif @call_letter == "O"
      @call_column = 4
    end
    @call_number = rand(1..100)
    p  "#{@call_letter}#{@call_number}"
  end

  def check
    @bingo_board.map! do |row|
      if row[@call_column] == @call_number
        row.map! do |position|
          if position == @call_number
            "X"
          else
            position
          end
        end
      else
        row
      end
    end
  end
  
  def print
    @bingo_board.each do |row|
      p row
    end
  end
end
=end


# Refactored Solution

class BingoBoard
  
  def initialize(board)
    # Stored the headers of board when instantiating
    @bingo_board = board
    @header = ["B","I","N","G","O"]
  end

  def call
    # Used .index to determine what column of the board the letter is at
    @call_letter = @header.sample
    @call_column = @header.index(@call_letter)
    @call_number = rand(1..100)
    p  "#{@call_letter}#{@call_number}"
    # Added a check to the board each time a new number is called out
    check
  end

  def check
    @bingo_board.map! do |row|
      if row[@call_column] == @call_number
        # Used a ternary operator to make the code more readable
        row.map! {|position| position == @call_number ? "X" : position}
      else
        row
      end
    end  
  end
  
  def print
    # Changed the syntax used with .each to make the code more readable
    @bingo_board.each {|row| p row}
  end

end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

millenial_bingo = BingoBoard.new(board)

new_game = BingoBoard.new(board)

new_game.call
new_game.check
50.times {|call| new_game.call}
new_game.print


# Millenial vs Traditional Bingo.. Just for fun, couldn't help myself :)

# millenial_bingo.print
# 50.times {|call|millenial_bingo.call}
# millenial_bingo.print

# traditional_bingo = BingoBoard.new(board) 
# 50.times do |call| 
#   traditional_bingo.call
#   sleep 0.3
#   traditional_bingo.print
# end

#Reflection

=begin
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
ANS: This one was difficult to pseudocode and I've noticed that for most of the assignments on classes. I started out 
with a minimal outline of what each method should do and then started writing code. As I came to a point where more logic
was needed, I went back to the pseudocode and revised it before jumping back to writing code. This really helped get my 
initial logic down quickly while also allowing me to get my intial code ideas down quickly too.

What are the benefits of using a class for this challenge?
ANS: We eliminated the creation of any variables outside of the class which keeps our code clean, we're storing the called numbers 
where they can be re-used until the next time a number is called, and our board is only printed out when we want it to be.

How can you access coordinates in a nested array?
ANS: You can nest Enumerables just like you can nest Arrays. This is how you can access coordinates in multi-dimensional arrays.

What methods did you use to access and modify the array?
ANS: I used .map! with two conditional statements to determine what to do with the row if the called number was there.

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does 
it serve, and how is it called?
ANS: I used .index for the first time. This returns the index of an object in an array .If a match is found the block returns the index.
If a match is NOT found it returns nil. This was perfect when linking the BINGO column headers to the corresponding index position.

How did you determine what should be an instance variable versus a local variable?
ANS: Anything that I planned to re-use I created as an instance variable (Call letter, letter's corresponding index, call number,
bingo board). Anything that would not need to be used again was a local variable (The rows and positions used for iterating).

What do you feel is most improved in your refactored solution?
ANS: I feel like I mostly improved readability. I didn't think my initial solution was too hard to follow, but there were a few things I 
modified that saved some lines of code and also made it much more apparent what I was trying to accomplish. The call method is a good example
where I eliminated an unnecessarily complex conditional.
=end
