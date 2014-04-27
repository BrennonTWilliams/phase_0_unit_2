# U2.W4: Refactor Cipher Solution

#Worked on this challenge: Antonio, Brennon


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

def translate_to_cipher(sentence) # create method
    alphabet = ('a'..'z').to_a # create array of alphabet chars
    cipher = Hash[alphabet.zip(alphabet.rotate(4))] # create hash of alphabet and rotated alphabet
    spaces = ["@", "#", "$", "%", "^", "&", "*"] # create array of symbols that translate to spaces
    
    original_sentence = sentence.downcase # downcase the sentence
    encoded_sentence = [] # create empty array of the encoded sentence we will return
    original_sentence.each_char do |element| # iterate through each character in the passed sentence
      if cipher.include?(element) # check if the cipher contains translatable value
        encoded_sentence << cipher[element] # push corresponding element to the encoded sentence we will return
      elsif element == ' ' # check if the character is a space
        encoded_sentence << spaces.sample # push a random symbol from spaces array
      else 
        encoded_sentence << element # if we don't have a translatable character then just push the character as is
      end
     end
    
    return encoded_sentence.join # convert the sentence array to string and return it
end


# Questions:
# 1. What is the .to_a method doing?
# It turns stuff into arrays.
# 2. How does the rotate method work? What does it work on?
# The rotate method pushes the current character to the amount of its parameter.
# It works on arrays.
# 3. What is `each_char` doing?
# It selects each character in the array.
# 4. What does `sample` do?
# It picks a random element from an array.
# 5. Are there any other methods you want to understand better?
#Yes! #zip, #tr and the entire regex gang.
# 6. Does this code look better or worse than your refactored solution of the original cipher code? What's better? What's worse?
# Better, our refactored solution was a bit more clunky and 
# much, much longer. This is way simpler and way clearer.
# 7. Is this good code? What makes it good? What makes it bad?
# It's good because it's semantically named and extremely concise.
# It is also very consistent (for example, arrays are pushed the 
# same way).

# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time?
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")





# 5. Reflection 
# Right off the bat it was just so sweet to get to look at the answer. Hands down we
# can say this was the most rewarding dbc challenge I've worked on, I learnt so many things
# just from reverse engineering this challenge, this is right by my kinesthetic learning alley.
# It was really cool to see a "perfect" version on the code we had been
# working on for the past few hours. It was also humbling to notice the
# disparity between the cleanliness of our code and this one's. 