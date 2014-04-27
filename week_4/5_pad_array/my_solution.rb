# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself

# 1. Pseudocode

# What is the input? 

# Size of padding and the value that is placed in the padded array elements

# What is the output? (i.e. What should the code return?)

# A new, padded array

# What are the steps needed to solve the problem?
# Create Array class
# Create pad and pad! methods
# create new array
# if padding is less than or equal to passed array then return original array
# otherwise add 

# 2. Initial Solution

class Array
	def pad (padding, placeholder = nil)
		new_array = []

		if padding <= self.length
			new_array = self
			return new_array
		else
			for i in 0..padding-1 do
				if i < self.length
					new_array[i] = self[i]
				else
					new_array.push placeholder
				end
			end
			new_array
		end
	end

	def pad! (padding, placeholder = nil)
		if padding <= self.length
			return self
		else
			for j in self.length..padding
				self[j] = placeholder
			end
		end
		self
	end


end		

# 3. Refactored Solution

# As usual, I'm not sure how to refactor this. I've looked through some other students' 
# refactoring and it appears that they usually refactor by having another student or tutor
# look over their code and make suggestions. If I have time this weekend I will do that 
# and update. 


# 4. Reflection 

# I'm a little perplexed as to why we needed to create two different types of the pad method.
# Why do we need one self destructing and one not? I would have just created the non-self-destructing
#solution. It seems silly to have two methods that do the same thing, but in one I have to set new_array to self
# before returning it. 
# Also, I ran the supplied test file in Terminal and it threw an error ("Undefined 'description'") so I was flying
# a little blind on this one, using the tests supplied in the directions.