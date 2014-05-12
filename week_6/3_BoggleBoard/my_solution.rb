# U2.W6: Create a BoggleBoard Class


# I worked on this challenge by myself


# 2. Pseudocode



# 3. Initial Solution
class BoggleBoard

	def initialize dice_grid
		@dice_grid = dice_grid
	end
 
	def create_word(*coords)
   		coords.map { |coord| @dice_grid[coord.first][coord.last]}.join("")
	end

	def get_row(row)
		@dice_grid[row]
	end

	def get_col(col)
    	@dice_grid.map {|boggle_board| boggle_board[col] }
	end

	def get_all
		@dice_grid
	end
 
end
 
# 4. Refactored Solution



# 1. DRIVER TESTS GO BELOW THIS LINE

 # implement tests for each of the methods here:

dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)
p boggle_board.create_word([0,0],[0,1],[0,2]) == "bra"
p boggle_board.get_col(0) == ["b", "i", "e", "t"]
p boggle_board.get_row(1) == ["i", "o", "d", "t"]
#puts boggle_board.get_all

# dice_grid.length.times {
# 	|current| p boggle_board.get_row(current)
#               p boggle_board.get_col(current)} 

# brae
# biet
# iodt
# roca
# eclr
# adlk
# take
# etre

# create driver test code to retrieve a value at a coordinate here:
p boggle_board.create_word([0,0]) == "b"

# 5. Reflection 
# I really enjoy Object-oriented programming, its really nice to create 
# an object once and use it to retrieve information without worrying about
# constantly intterfacing with the class.