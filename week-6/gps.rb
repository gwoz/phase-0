# Your Names
# 1) Elizabeth Roche
# 2) Mike Gwozdek

# We spent [1.5] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)

#check to see if any of the keys in the library hash are equal to the item_to_make
#if the item_to_make isn't in the library, subtract one from the error counter
#if the error counter is greater than one, raise argumenterror  
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  unless library.has_key?(item_to_make)
      raise ArgumentError.new("#{item_to_make} is not a valid input") 
  end

  #define serving size as the number of servings for the item (value) in the lib hash
  #determining how many ingredients are left after using % ingredients by serving size
  serving_size = library[item_to_make]
  remaining_ingredients = num_of_ingredients % serving_size

  # PSEUDOCODE - Suggested 
  # input: leftover ingredients
  # output: leftover_thing
  # steps to get there: check to see if remaining ingredients is in the library
  # if ingredients remaining is >= value for each key, return a new array of the keys
  # turn the array into a string so it can be input in the message back to the user
  suggested_baking=[]
  library.each do |key, value|
   if remaining_ingredients >= value 
     suggested_baking<< key.capitalize
   end
  end
  suggested = suggested_baking.join(",")

  #When remaining ingredients are zero, return string - exact number of ingredients
  #otherwise return alternate string - we have some leftover ingredients
  case remaining_ingredients
  when 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: #{suggested}"
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

# REFLECTION
=begin
What did you learn about making code readable by working on this challenge?
ANS: This is critical. We should leave easy to follow "breadcrumbs" in our code. Like we do for reflections, we should
write code for someone else or our future self.

Did you learn any new methods? What did you learn about them?
ANS: I learned has_key? in this challenge. It returns true if the item you provide in the argument is present in the hash. This was
useful when determining whether an error message should be thrown.

What did you learn about accessing data in hashes? 
ANS: I learned how to use unless. It didn't click with me until this exercise, but a conditional that could result in an error 
is a perfect use case. Basically we can have our loop proceed through each item without doing anything special until it finds an error. At 
that point we can provide information on what the program should do next (throw error in this case).

What concepts were solidified when working through this challenge?
ANS: Working with hashes was really solidified for me. So far I've been able to get by, but now I'm thinking of methods right away that
could be helpful instead of searching the docs to find new ones. I also realized we won't always get the benefit of creating new code so 
we need to be able to break down someone else's code whether it's pretty or ugly.
=end





