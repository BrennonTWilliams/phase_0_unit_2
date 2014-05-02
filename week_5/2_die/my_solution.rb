# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: array of die side strings
# Output: if sides called then the length of the array is returned
# if roll is called then a random string from the passed labels array is returned
# Steps:
# assign @sides to length of labels array
# if sides is less than one then throw error
# sides method returns @sides
# roll method return random string from labels

# 3. Initial Solution

class Die
  def initialize(labels)
  	@labels = labels
    @sides = @labels.length
    if @sides < 1
    	raise ArguementError.new("Die must have at least one side")
    end
  end
  
  def sides
    @sides
  end
  
  def roll
    @labels[rand(@sides)]
  end
end



# 4. Refactored Solution

# I really couldn't think how to refactor this. The modification from
# the last program to this one was pretty quick and I can't think 
# how to make it more consise.


# 1. DRIVER TESTS GO BELOW THIS LINE
die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
puts die.sides # still returns the number of sides, in this case 6
puts die.roll # returns one of ['A', 'B', 'C', 'D', 'E', 'F'], randomly





# 5. Reflection 
# It was fun to see how quick it was to modify and existing program to
# satisfy new requirements that appear to be more complex than they are.
# Ruby really is a great language, handeling random numbers, array length,
# etc is insanely easy compared to other languages I've used. 