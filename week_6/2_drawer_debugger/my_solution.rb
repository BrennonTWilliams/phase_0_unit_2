# U2.W6: Drawer Debugger


# I worked on this challenge by myself


# 2. Original Code

class Drawer

	attr_reader :contents

	# Are there any more methods needed in this class?

	def initialize
		@contents = []
		@open = true
	end

	def open
		@open = true
	end

	def close
		@open = false
	end 

	def add_item item
		@contents << item
	end

	def remove_item(item = @contents.pop) #what is `#pop` doing?
		@contents.delete(item)
	end

	def dump  # what should this method return?
		puts "Your drawer is empty."
	end

	def view_contents
		puts "The drawer contains:"
		@contents.each {|silverware| puts "- " + silverware.type }
	end
end

class Silverware
	attr_reader :type

	# Are there any more methods needed in this class?

	def initialize(type, clean = true)
		@type = type
		@clean = clean
	end

	def eat
		puts "eating with the #{type}"
		@clean = false
	end

	def clean_silverware
		puts "cleaning the #{type}"
		@clean = true
	end

end

knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork")) 
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware 

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return?


fork = silverware_drawer.remove_item(fork) #add some puts statements to help you trace through the code...
fork1 = Silverware.new("fork")
fork1.eat

#BONUS SECTION
# puts fork.clean


# 5. Reflection 

# One of the main takeaways for this problem is being aware of the difference between code that doesn't 
# throw an error and code that does exactly what its supposed to without throwing an error. My challange
# this go-round was making sure I understood what the supplied code was doing and making sure I was fixing
# the code while ensuring that I wasn't altering the intended purpose of the code.