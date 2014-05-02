# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge by myself

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]

$boggle_board = boggle_board

# Part 1: Access multiple elements of a nested array

# Pseudocode
# It looks like the solution for part one was supplied. The
# directions don't tell us to do anything, rather they just
# give us this method...

# Initial Solution

def create_word(board, *coords)
    coords.map { |coord| board[coord.first][coord.last]}.join("")
  end

# Refactored Solution

# The supplied code does not appear to be refactorable (it's basically
# one line)

# DRIVER TESTS GO BELOW THIS LINE

# puts create_word(boggle_board, [2,1], [1,1], [1,2], [0,3])  #=> returns "code"  
# puts create_word(boggle_board, [0,1], [0,2], [1,2])  #=> returns "rad"

# Reflection 

# The directions didn't tell us to do anything, so I'm not sure if I did this
# section correctly.

#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode
# get_row accepts one parameter, number row
# return boggle_board row

# Initial Solution

def get_row(row)
   $boggle_board[row]
end

# Refactored Solution

# Method is too simple to refactor

# DRIVER TESTS GO BELOW THIS LINE

# print get_row(1) #=>  ["i", "o", "d", "t"]

# Reflection 
# I actually had to look up how to use global variables on this one to make 
# boggle_board accessable.


#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode
# Create get_col method accepting number parameter col, representing the column we want
# to return
# Map $boggle_board - for each sub-array in $boggle_board return the designated column value
# for each

# Initial Solution

def get_col(col)
    $boggle_board.map {|boggle_board| boggle_board[col] }
end

# Refactored Solution

# Method is too simple to refactor

# DRIVER TESTS GO BELOW THIS LINE

# print get_col(1)  #=>  ["r", "o", "c", "a"]

# Reflection 

# This one actually took me a bit to figure out. I'm still new to
# array mapping so I had to try a few things out before I found
# the right way to map it (the answer is always simpler than the
# guess, I suppose).