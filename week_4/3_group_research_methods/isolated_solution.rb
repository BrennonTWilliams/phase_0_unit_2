# U2.W4: Research Methods

i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, 
            "Annabelle" => 0, "Ditto" => 3}





def my_array_modification_method(source, thing_to_modify)  
  clean = []
  source.each do |current|
  	if current.is_a? Integer
  		clean.push (current + thing_to_modify)
  	else
  		clean.push current
  	end
  end
   clean
end


def my_hash_modification_method(source, thing_to_modify)
  source.each {|value, number| source[value] = number + thing_to_modify}
end
