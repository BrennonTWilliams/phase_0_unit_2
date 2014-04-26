# U2.W4: Calculate the mode!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself

# 1. Pseudocode

# What is the input?

#an array

# What is the output? (i.e. What should the code return?)

# a single number

# What are the steps needed to solve the problem?

# create array method
# create greatestRepeats and set to 0
# create empty frequent array
# for every value in array
# 	create totalCurrent and set to how many repeats we have for the current value in array
# 	print repeats
# 	if totalCurrent is greater than greatestRepeats
# 		reset counter
# 		empty frequent
# 		add 1 to counter
# 	set greatestRepeats to totalCurrent because it is the new highest value of repeats 
# 	add current to the frequent array
# 	otherwise if totalCurrent is already greatestRepeats
# 		add current to frequent
# 	return frequent's repeated values


# 2. Initial Solution

def mode array
  greatestRepeats = 0
  frequent = []
  array.each do |current|
    totalCurrent = array.count current
    puts "For " + current.to_s + " we have found: " + totalCurrent.to_s + " repeats"
    if totalCurrent > greatestRepeats
      counter = 0
        while frequent.length > 0 #wipe frequent
          frequent.delete(counter)
          counter += 1
        end
      greatestRepeats = totalCurrent
      frequent.push current
    elsif totalCurrent == greatestRepeats && totalCurrent > 0 #add without wiping frequent
      frequent.push current
    end
  end

  frequent.uniq
end


# 3. Refactored Solution

#As I wrote in the last program, I'm not sure how to refactor a program this simple. Isn't refactoring for memory and speed
#improvements? That doesn't seem to be relevant yet.

# 4. Reflection 

# I realize that I solved this problem in a really weird way. You guys probably wanted me to use hashes and keys to solve this
# problem. However, after experimenting with a few different possibilities I thought this would be the most fun way to
# do it.