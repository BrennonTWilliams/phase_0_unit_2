 decoded_sentence = []
  alphabet = ('a'..'z').to_a
  weird_symbols = ['@', '#', '$', '%', '^', '&', '*'] 
  cipher = alphabet.rotate(4)

  puts cipher