# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [2] hours on this challenge.


# Release 0: Pseudocode

=begin
Outline: 

Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  Randomly select a letter from b, i, n, g, or o for the current call column
  Randomly select a number from 1-100 and input it as the current call number

Check the called column for the number called.
  Check the position corresponding to the current letter for each row to see if the number is there
  IF the number is found THEN replace it with an X
  ELSE do nothing


Display a column to the console
  fill in the outline here

Display the board to the console (prettily)
  fill in the outline here
=end


# Initial Solution

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
    p  "#{@call_letter}:#{@call_number}"
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

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

new_game.call
new_game.check
new_game.print

#Reflection

