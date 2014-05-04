# U2.W5: The Bakery Challenge (GPS 2.1)

# Your Names
# 1) Brennon Williams
# 2) Jeuel B Wilkerson

 # This is the file you should end up editing. 
 
def bakery_num(num_of_people, fav_food)
  offerings_available = {"pie" => 8, "cake" => 6, "cookie" => 1} # creates a hash
  pie_qty = 0 #default pie_qty
  cake_qty = 0 # default
  cookie_qty = 0 # default
  
  raise ArgumentError.new("You can't make that food") unless offerings_available.has_key?(fav_food) #run this, if offering not found

  fav_food_qty = offerings_available.values_at(fav_food)[0] # find num of people offering can serve
  if num_of_people % fav_food_qty == 0 #if offering can satisfy everyone 
    num_of_food = num_of_people / fav_food_qty  #find how many of that food we need to make
    "You need to make #{num_of_food} #{fav_food}(s)." #return that!
  else # if offering can not satisfy everyone
    while num_of_people > 0 #itterate through num of people
     if num_of_people / offerings_available["pie"] > 0
        pie_qty = num_of_people / offerings_available["pie"] #give as many pies as possible without remainder
        num_of_people = num_of_people % offerings_available["pie"]
     elsif num_of_people / offerings_available["cake"] > 0
        cake_qty = num_of_people / offerings_available["cake"]
        num_of_people = num_of_people % offerings_available["cake"] #give as many cake as possible without remainder
     else
        cookie_qty = num_of_people #give cookies equivalent to people
        num_of_people = 0 #everyone is satisfied, breaks when loop
     end
   end
     return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)." #return values
  end
end

 

#-----------------------------------------------------------------------------------------------------
#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!
 

# REFLECTION
# Refactoring is a really good skill to have as legacy code is a part of almost any programming job. The supplied
# code was particularly terrible, and we were able to clean it up quite a bit. We were pressed for time on this one, 
# the next step would be to replace lines 17-31 by iterating through offerings_available and an array of quantities
# and satisfy each in the loop, saving space and making the program more readable.