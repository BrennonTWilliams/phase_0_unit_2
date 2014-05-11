# U2.W6: Testing Assert Statements

# I worked on this challenge by myself


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
#assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs

# Create method assert accepting no parameters
# if yeild is false raise an error
# end method
# create string name with value "bettysue"
# Call assert method with comparison between name and string "bettysue"
# Call assert method with comparison between name and string "billybob"


# 3. Copy your selected challenge here

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


# 4. Convert your driver test code from that challenge into Assert Statements

#ORIGINAL DRIVER CODE
# true_test = CreditCard.new(4563960122001999)
# puts true_test.check_card
# false_test = CreditCard.new(1111111111111111)
# puts false_test.check_card

# NEW DRIVER CODE 

assert {CreditCard.instance_method(:initialize).arity == 1}

assert {CreditCard.instance_method(:check_card).arity == 0}

card = CreditCard.new(4563960122001999)
assert {card.check_card == true}

#yield false
#card = CreditCard.new(4563960122001999)
#assert {card.check_card == false}


# 5. Reflection
# I really like how helpful assert statements are, I'll definitely be using them a lot more.
# I'm still getting the hang of them (for instance, I'm not quite sure how they're that much
# better than the true/false test statements we made earlier).