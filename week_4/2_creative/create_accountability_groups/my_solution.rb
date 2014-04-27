# U2.W4: Create Accountability Groups


# I worked on this challenge by myself

# 2. Pseudocode

# Input: array of names
# Output: printed list of accountability groups 
# Steps:
# randomly shuffle list so groups are formed randomly
# print the names in groups of four
# when we get to the end if there are no stragglers then we're done
# if we have 1 left over then we'll add him/her to the last group
# if we have 2 or 3 stragglers then we will put them in their own group
# repeat entire process two more times for units two and three



# if students.length%GROUP_SIZE == 0 #figure out how many stragglers we have
# 			puts "no stragglers"
# 		elsif students.length%GROUP_SIZE == 1
# 			puts "one straggler"
# 		else
# 			puts "two or three stragglers"
# 		end

# 3. Initial Solution


juneCohort = ['Hardy', 'Soghoian', 'Singh', 'Ashford', 'Mazur', 'Ernst', 'Downs', 
			'Borcar', 'Koines', 'Principe', 'Vartan', 'Bourdier', 'Brostoff', 'Susens-Jackson', 
			'Williams', 'Salcido', 'Valkenburg', 'Rusk', 'Howard', 'Moon', 'Trent', 'Cousineau', 
			'Glover', 'Garrett', 'Piccolo', 'White', 'Huynh', 'Shuff', 'Wayne', 'Kynaston', 'Oseitutu', 
			'Wilkerson', 'Mulvahill', 'Rosztoczy', 'Jeong', 'Reiner', 'Carey', 'Mendonca', 'Jarchow', 
			'Shanks', 'Carleton', 'Lear', 'Meneses', 'Hein', 'Kuzio', 'Gavaudan', 'Teter', 'Ginalick', 
			'Shah', 'Giovacchini', 'Zayyad', 'Crawford', 'Smith', 'Bernaldo', 'Ishak', 'Stack', 'Jason', 
			'Callaway', 'Patel', 'Gondeck', 'Olson', 'Kim', 'Pearlman', 'Kurdi', 'Howard', 'Sverdlov', 
			'George', 'Kirschner', 'Pflederer', 'Perez']

UNITS = 3
GROUP_SIZE = 4

def createGroups students

	stragglers = students.length%GROUP_SIZE # figure out how many stragglers we have
	wholeGroups = students.length/GROUP_SIZE

	if students.length < 4
		puts "ERROR: Must have at least four participants to create groups"
		exit
	end

	for currentUnit in 1..UNITS #do whole operation once for each unit
		students = students.shuffle #randomize list so its new each time
		puts "\n \n" + " UNIT " + currentUnit.to_s + "\n \n" #Create unit title

		for currentGroup in 1..wholeGroups #Create each group (whole groups)
			puts "\n" "GROUP " + currentGroup.to_s + ": "

			for currentStudent in 0..(GROUP_SIZE - 1) #print students in each group
				puts students[((currentGroup - 1)*GROUP_SIZE) + currentStudent].to_s
			end
		end

		if stragglers == 1 # last group will just be a group of five
			puts students[students.length - 1].to_s
		elsif stragglers == 2 || stragglers == 3 # create a new group
			puts "\n" + "GROUP " + (currentGroup + 1).to_s + ": "
			for currentStraggler in 1..stragglers
				puts students[students.length - currentStraggler]
			end
			puts ""
		end
			
	end
end

createGroups juneCohort

# 4. Refactored Solution

# Originally instead of currentUnit, currentStraggler, etc I had letters like "i". Because the loops
# were nested I gave them better names so my code was more readable. I've "recycled" quite a bit and 
# can't think of any ways to make my code shorter without losing readability.
# Groups are not created if there are fewer than four participants. I considered adjusting the code to
# make only one little group for eah unit, but that seemed to defeat the purpose of having grouped units
# so I terminate the method if there are too few participants

# 1. DRIVER TESTS GO BELOW THIS LINE

#createGroups ['a', 'b', 'c', 'd'] # => 1 group of 4/ 3 units
#createGroups ['a', 'b', 'c', 'd', 'e'] # => 1 group of 5/ 3 units
#createGroups ['a', 'b', 'c', 'd', 'e', 'f'] # => 1 group of 4 + 1 group of 2/ 3 units
#createGroups ['a', 'b', 'c', 'd', 'e', 'f', 'g'] # => 1 group of 4 + 1 group of 3/ 3 units


# 5. Reflection 

# This program took a suprisingly long time. It was interesting to have to decide how to treat
# stragglers. I think my way makes sense, but there are certainly other equally vaild ways to do it.
# Psuedocode was a HUGE help here. Whenever I got stuck and didn't know what to do I could just look
#back to my original outline. 
