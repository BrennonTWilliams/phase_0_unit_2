# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: number of sides for the dice
# Output: either number of sides or a "roll" of the dice, a random number between 1 and the number of sides
# Steps: 
# assign @sides to sides
# if sides is less than one then throw error
# sides method returns @sides
# roll method return random number between one and the number of sides

# 3. Initial Solution

# class Die
#   def initialize(sides)
#     @sides = sides
#     if @sides < 1
#     	raise ArguementError.new("Die must have at least one side")
#     end
#   end
  
#   def sides
#     return @sides
#   end
  
#   def roll
#     return 1 + rand(@sides)
#   end
# end


# 4. Refactored Solution

# Eliminated hard returns, couldn't think what else to refactor

class Die
  def initialize(sides)
    @sides = sides
    if @sides < 1
    	raise ArguementError.new("Die must have at least one side")
    end
  end
  
  def sides
    @sides
  end
  
  def roll
    1 + rand(@sides)
  end
end


# 1. DRIVER TESTS GO BELOW THIS LINE
# die = Die.new(6)
# puts die.sides
# puts die.roll




# 5. Reflection 

# This was a nice way for use to ease into Class structure. I've dabbled
# in C a bit, and I'm forever grateful for the awesomeness of object-oriented
# languages. I think this was also the first time I've use rand(). I'm sure 
# it will come in handy.