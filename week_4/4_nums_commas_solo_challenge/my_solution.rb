# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input? 

# An integer

# What is the output? (i.e. What should the code return?)

# A string that is appropriately seperated by commmas

# What are the steps needed to solve the problem?

# Define method
# Get integer number of characters
# convert integer to string
# remove last character off integer (now string)
# add that character to a new string
# if there have been three characters since the last comma and-
# -there are still more characters to add then draw a comma
# return the new string


# 2. Initial Solution

def commaInt number
	new_string = ""
	number_string = number.to_s
	char_counter = 0

	while number_string.size > 0
		new_string = number_string.chars.last + new_string
		number_string = number_string.chomp(number_string.chars.last)
		char_counter = char_counter + 1
		if char_counter%3 == 0 && number_string.size > 0
			new_string = "," + new_string
		end
	end
	new_string
end

# 2.5 Driver code

puts commaInt(123456789) == "123,456,789"

# 3. Refactored Solution

# I went through the D.R.Y. standards and my code appears to be alright. The names 
# make sense (hopefully) and its a pretty concise program. I'm not sure how to
# refactor it

# 4. Reflection 

# I love how easy it is to combine strings in Ruby, its just like adding two numbers together.
# Originally I used a comma counter and added it to the string size and modded it by three to determine 
# if a comma should be added. This wasn't bad per se, but it was ugly and unnecessary so I decided to use
# a simpler character counter instead (refactoring on the fly!).