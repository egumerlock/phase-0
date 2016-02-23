# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent 4.5 hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
# 1. .sample from array with b i n g o
# 2. rand(num) for a random number

# Check the called column for the number called.
# 1. Check the given array for number called

# If the number is in the column, replace with an 'x'

# Display a column to the console
#

# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
    @board_header = ['B', 'I', 'N', 'G', 'O']
    @letter = ['B', 'I', 'N', 'G', 'O'].sample
    @number = rand(1..100)
    @column = @board_header.index(@letter)
  end

  def call
    letter_number = []
    letter_number.push(@letter)
    letter_number.push(@number)
    display_call_piece
  end

  def display_call_piece
    puts "Letter - #{@letter}, Number - #{@number}"
  end

  def display_board
    puts @board_header.join('  ')
    @bingo_board.each do |row|
      puts "#{row.join(' ')}"
    end
  end

  def check
    @bingo_board.map! do |row|
      if row[@column.to_i] == @number
        row.map! { |piece| piece == @number ? ' X' : piece}
      else
        row
      end
    end
  end


end


# Refactored Solution
class BingoBoard

  def initialize(board)
    @bingo_board = board
    @board_header = ['B', 'I', 'N', 'G', 'O']
    @letter = @board_header.sample
    @number = rand(1..100)
    @column_num = @board_header.index(@letter)
  end

  def call
    letter_number = []
    letter_number << @letter
    letter_number << @number
    puts "Letter - #{@letter}, Number - #{@number}"
  end

  def check
    @bingo_board.map! do |row|
      if row[@column_num.to_i] == @number
        row.map! { |piece| piece == @number ? ' X' : piece}
      else
        row
      end
    end
  end

  def display_board
    puts @board_header.join('  ')
    @bingo_board.each do |row|
      puts "#{row.join(' ')}"
    end
  end

end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [

  [47, 44, 71, 8, 88],
  [22, 69, 75, 65, 73],
  [83, 85, 97, 89, 57],
  [25, 31, 96, 68, 51],
  [75, 70, 54, 80, 83]
]

new_game = BingoBoard.new(board)
new_game.call
new_game.check
new_game.display_board

# Reflection
=begin
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
  Pseudocoding this challenge was tough, especially with no background in the game of BINGO.  I had to look up exactly how bingo was played, and then pseudocode.  My pseudocoding style is still not excellent, but it outlines the main pieces that I will have to create.
What are the benefits of using a class for this challenge?
  The benefits of using a class are that I can reuse initialized instance variables throughout all of my methods within the class.  If not, I would have had to refine variables within every method -- no fun.
How can you access coordinates in a nested array?
  You can access these in this fashion: @bingo_board[0][1].  This would select the second value in the first nested array.
What methods did you use to access and modify the array?
  I used .map! and .each to modify the array, and they seemed to work out pretty well.
Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
  .index() was a new method I learned.  It serves the purpose of returning the index value of a given value in the array.  This allowed me to target the given column of bingo numbers based on the letter that was generated.
How did you determine what should be an instance variable versus a local variable?
  All of the variables that I was going to use in my different methods were all initialized in the initialize method.  I used local variables for each .each do or .map! block that I used.
What do you feel is most improved in your refactored solution?
  Using an instance variable for the column index number was the most improved thing in my refactored solution.  It allowed me to get rid of a huge case statement that funneled all outcomes into different cases.
=end
