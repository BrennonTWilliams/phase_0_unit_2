# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: answer - the correct number, guess - the guessed number
# Output: guess return correct, high, or low; solved return
# boolean true/false value if guess equals answer
# Steps:
# create @answer and set to passed number answer
# create guess method accepting number guess as parameter
# create @guess and set to guess
# if guess is right return correct, otherwise return high or low respectively
# create solved? method
# return boolean t/f as to whether guess equals answer

# 3. Initial Solution

# class GuessingGame
#   def initialize(answer)
#     @answer = answer
#   end
  
#   def guess(guess)
#   	@guess = guess 
#   	if @guess == @answer
#   		return :correct
#   	elsif @guess > @answer
#   		return :high
#   	elsif @guess < @answer
#   		return :low
#   	end
#   end

#   def solved?
#   	@guess == @answer
#   end
# end




# 4. Refactored Solution

# eliminated hard returns, couldn't think what else to refactor
class GuessingGame
  def initialize(answer)
    @answer = answer
  end
  
  def guess(guess)
  	@guess = guess 
  	if @guess == @answer
  		:correct
  	elsif @guess > @answer
  		:high
  	elsif @guess < @answer
  		:low
  	end
  end

  def solved?
  	@guess == @answer
  end
end




# 1. DRIVER TESTS GO BELOW THIS LINE
game = GuessingGame.new(10)

puts game.solved?   # => false

puts game.guess(5)  # => :low
puts game.guess(20) # => :high
puts game.solved?   # => false

puts game.guess(10) # => :correct
puts game.solved?   # => true





# 5. Reflection 
# This is the first time I've used symbols (ex ":high") before
# and they are really convenient. Refactoring remains the stumper
# here. It's tough to rewrite code immediately after you've written
# it and it works. 