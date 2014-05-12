# U2.W6: Refactoring for Code Readability


# I worked on this challenge by myself


# Original Solution
# by Adrian Soghoian

class CreditCard
	def initialize(number)
  	raise ArgumentError, 'Please enter a 16-digit number' if number.to_s.length != 16
  	@number = number
  	@sum = 0
  end

	def check_card
		double_numbers(@number)
		sum_numbers(@number)
		if @sum % 10 == 0
			return true
		else
			return false
		end
	end

	def double_numbers(number) 
		@number = number.to_s.split(//).map{|x| x.to_i}
		for i in 0..(@number.length - 1)
			if i % 2 == 1
				@number[i] = @number[i]*2
			end
		end
		return @number
	end

	def sum_numbers(number)
		@number.each do |x|
			if x.to_s.length == 2
				@sum += 1 + (x % 10)	
			else 
				@sum += x
			end 
		end
	end
end



# Refactored Solution

class CreditCard
	def initialize(number)
  	raise ArgumentError, 'Please enter a 16-digit number' if number.to_s.length != 16
  	@number = number
  end

	def check_card
		@number = number.to_s.split(//).map{|x| x.to_i} # Double numbers
		@number.each_index do |index| # each_index is clearer than for loop in this case
      		if index % 2 == 0 # No need to sum first, we can just mod here
        		@number[index] = @number[index]*2
      		end
    	end
		@number = @number.join('').to_s.chars.map(&:to_i) # Don't need to iterate again, just join
		if @number.inject(:+) % 10 == 0 # No need for new variable, just use inject
    	 	true
    	else
      		false
    	end
	end
end




# DRIVER TESTS GO BELOW THIS LINE

assert {CreditCard.instance_method(:initialize).arity == 1}

assert {CreditCard.instance_method(:check_card).arity == 0}

card = CreditCard.new(4563960122001999)
assert {card.check_card == true}




# Reflection 
# Going through other students' work was hubmling, I was incredibly 
# impressed by the sophistication shown in others' solutions. I think
# my refactoring of Adrian's problem is simpler (ex it uses less variables
# and methods) but is equal on readability, Adrian's initial solution was
# already pretty clear. 