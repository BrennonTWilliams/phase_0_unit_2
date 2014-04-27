# def north_korean_cipher(coded_message) 
#   input = coded_message.downcase.split("") # downcases and breaks up message into substrings of 1 char each
#   decoded_sentence = [] #storage array for catching the iteration results
#                         # cipher is a hash, contains the key for character shifts
#   cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
#             "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
#             "g" => "c", 
#             "h" => "d", 
#             "i" => "e", 
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}
            
#   input.each do |x| # Each is iterating through each character in input (coded message downcase)
#     found_match = false  # Assume no match until an if statement finds one
#     cipher.each_key do |y| #each_key is like using #each but only on the key side of the hash, not the value
#       if x == y  # x is the current element of our coded message, y is the current key. 
#                 # check if our current char match the current key
#         puts "I am comparing x and y. X is #{x} and Y is #{y}."
#         decoded_sentence << cipher[y] #found a match, add corrosponding value to the decoded string we will return
#         found_match = true
#         break  # No need to check again, already found match so skip the next two if statements
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" # All symbols correspond 
#                                                                                           # to empty space
#         decoded_sentence << " " #add empty space to decoded sentence
#         found_match = true
#         break # already found match, no need to go through last if statement
#       elsif (0..9).to_a.include?(x)
#         decoded_sentence << x #push number to decoded sentence, they dont get translated
#         found_match = true
#         break
#       end 
#     end
#     if not found_match  # searches for characters that dont match / are not letters
#       decoded_sentence << x #we keep the character and push it b/c we don't have anything to translate it to
#     end
#   end
#   decoded_sentence = decoded_sentence.join("") # join all chararacters into one string
 
#   if decoded_sentence.match(/\d+/) # looks for number
#     decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #replaces number with one that is 100x smaller
#   end  
#   return decoded_sentence # return results captain obvious sherlock duh
# end


# Your Refactored Solution

SHIFT_DISTANCE = 4  
  
def north_korean_cipher(coded_message) 
  input = coded_message.downcase.split("")
  decoded_sentence = []
  alphabet = ('a'..'z').to_a
  weird_symbols = ['@', '#', '$', '%', '^', '&', '*'] 
  shifted_alphabet = alphabet.rotate(SHIFT_DISTANCE)
  cipher = Hash[shifted_alphabet.zip(alphabet.map {|i| i.include?(',') ? (i.split /, /) : i})]
  
  
            
  input.each do |x| # Each is iterating through each character in input (coded message downcase)
    found_match = false  # Assume no match until an if statement finds one
    cipher.each_key do |y| #each_key is like using #each but only on the key side of the hash, not the value
      if x == y  # x is the current element of our coded message, y is the current key. 
                 # check if our current char match the current key
        puts "I am comparing x and y. X is #{x} and Y is #{y}."
        decoded_sentence << cipher[y] #found a match, add corrosponding value to the decoded string we will return
        found_match = true
        break  # No need to check again, already found match so skip the next two if statements
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" # All symbols correspond 
                                                                                          # to empty space
        decoded_sentence << " " #add empty space to decoded sentence
        found_match = true
        break # already found match, no need to go through last if statement
      elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do?
        decoded_sentence << x #push number to decoded sentence, they dont get translated
        found_match = true
        puts "integer value found"
        break
      end 
    end
    if not found_match  # searches for characters that dont match / are not letters
      decoded_sentence << x #we keep the character and push it b/c we don't have anything to translate it to
    end
  end
  decoded_sentence = decoded_sentence.join("")
 
  # if decoded_sentence.match(/\d+/)
  #   decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...
  # end  
  return decoded_sentence # What is this returning?        
end


# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.")
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!")
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.")
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")

# Our Driver Test - Should print "true"
puts north_korean_cipher("e") == "a"
puts north_korean_cipher("12345") == "12345"
# Reflection
 
# I really enjoyed working on this challenge! Although it took us almost two hours, we learned about 
# a bunch of new Ruby methods, even some that we didn't use like Array.tr. 
# My teamworking skills have really improved as well. Both the driver and navigator roles were used
# successfully. Nice teamworking makes also spending 2 hours solving anything more enjoyable.
# Stepping back and looking at the code from a pseudcode perspective was what made everything click, once
# we stopped worrying about variables and stuff and we started looking at the structure that's when it all changed.
 