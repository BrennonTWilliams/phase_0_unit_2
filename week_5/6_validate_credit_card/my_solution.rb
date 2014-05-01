# U2.W5: Class Warfare, Validate a Credit Card Number

# 1) Ronald Ishak
# 2) Brennon Williams

# 2. Pseudocode

# Input: 16 digit number, representing credit card value
# Output: boolean true/false value as to the validity of the credit card
# Steps:
# 1. def initialize class that accepts 16 digit number (integer as an arguement)
# 2. convert the number to a string and check the length
# 3. if its not 16 then return arguement error
# 4. def CreditCard#check_card returns boolean of the card validity
# 5. double every other number starting from the first one
# 6. split the double digits to two numbers (10 = 1,0) 
# 7. add them up, and mod10
# 8. if returns 0 then true else false

# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
class CreditCard
  def initialize(number)
    @card_number = number
    if @card_number.to_s.length != 16
      raise ArguementError.new("Card number not equal to 16 digits")
    end
  end
  
  def check_card
    card_number = @card_number.to_s.chars.map(&:to_i)
    
    card_number.each_index do |index|
      if index % 2 == 0
        card_number[index] = card_number[index]*2
      end
    end
    
    card_number = card_number.join('').to_s.chars.map(&:to_i)
    
    if card_number.inject(:+) % 10 == 0
      true
    else
      false
    end
  end

end



# 4. Refactored Solution

# All variable names are clear, and the
# code is concise and logical. Therefore,
# we do not think refactoring is necessary
# in this case.

# 1. DRIVER TESTS GO BELOW THIS LINE

# should return true then false
true_test = CreditCard.new(4563960122001999)
puts true_test.check_card
false_test = CreditCard.new(1111111111111111)
puts false_test.check_card

# 5. Reflection 

# This excercise couldn't have gone any better. Ron and I worked great together
# and very comfortably switched between driver and navigator roles. 
# This was also very useful for me from a technical standpoint becuase it gave
# me some experience with character mapping, which is good to keep practicing.