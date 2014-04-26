# U2.W4: SOLO CHALLENGE Calculate the Median!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself

# 1. Pseudocode

# What is the input?

#an array

# What is the output? (i.e. What should the code return?)

#an integer value

# What are the steps needed to solve the problem?

# create method
# sort array
# if odd then div length by 2
# else even then split the array into two halves
# take the difference between the two and divide it by two
# add ths value to the first half
# retun this value

# 2. Initial Solution

def median array
   array = array.sort
  if array.length%2 == 1 #odd
    array[(array.length.to_f/2)]
  else # even
    mid1 = array[(array.length/2) - 1]
    mid2 = array[(array.length/2)]
    (mid2 - mid1).to_f/2 + mid1
  end

end



# 3. Refactored Solution

# I'm not really sure how to refactor this code becuase I tweaked it as I went along. It seems to work perfectly.
# I think refactoring will make more sense when we are writing longer programs where just working isn't enough.
# When things like speed and memory useage become relevant then refactoring will be really useful.


# 4. Reflection 

# I really enjoyed working on this problem. It's fun to look at a set of instructions and think "I have no idea how to do this"
# and then take it step by step to acheive a workable solution.
