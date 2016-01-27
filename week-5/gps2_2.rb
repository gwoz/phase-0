# PSEUDOCODE

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:   
  # create a collector for items with quanities
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: list of items with quantities[hash?]

# Method to add an item to a list
# input: item name and optional quantity
# steps: new entry to list with item and amount
#        insert new item to current list with quantity
# output: item with quantity

# Method to remove an item from the list
# input: spefify item and quantity to remove
# steps: remove item and quantity
# output: current list with item and quantity removed

# Method to update the quantity of an item
# input: item with changing the quantity 
# steps: find item and change quantity to new amount
# output: list with new quantity

# Method to print a list and make it look pretty
# input: the full list with quantities
# steps: print each item with quantity on seprate line
# output: pretty list


# INITIAL SOLUTION & REFACTOR

def create_list(items)
  groceries = items.split(' ') 
    list = {} 
  groceries.each do |item|
    list[item] = 1
  end
 return list
end

def add_item(item, quantity, list)
   list[item] = quantity
  list
end

def remove_item(item, list)
    list.delete(item)
  list
end

def update_quantity(item, quantity, list)
    list[item] = quantity
  list
end

def print_list(list)
     list.each do |key, value|
   puts "Buy #{value} of #{key}."
  end
end

p create_list("carrots apples cereal pizza") 
p add_item("salami", 4, create_list("carrots apples cereal pizza"))
p remove_item("carrots", create_list("carrots apples cereal pizza"))
p update_quantity('apples', 5, create_list("carrots apples cereal pizza"))
p print_list(add_item("salami", 4, create_list("carrots apples cereal pizza")))

=begin

REFLECTION

What did you learn about pseudocode from working on this challenge?
Ans: I learned that it's important to make the pseudocode easy to read and 
free of Ruby terminology. I know this has been hammered in since the start, but this
really does make it significantly easier to create an initial solution.

What are the tradeoffs of using Arrays and Hashes for this challenge?
Ans: We decided to use a combination of both arrays and hashes. We thought it was most
appropriate to first create the grocery list in an array since we were taking a text
string without a quantity. Then we converted the array to a hash so we could capture the
quantitities going forward. If we did this again we might use a hash right away.

What does a method return?
Ans: A method returns the result of evaluating the expressions within it.

What kind of things can you pass into methods as arguments?
Ans: You can pass any object into a method as an argument. This includes strings, arrays,
hashes, and even other methods. For example, we were passing in the create_list function
to the other methods to avoid inputting a list each time. It wasn't pretty, but it demonstrated
how powerful this can be!

How can you pass information between methods?
Ans: You can pass a method as an argument into another method. This removes the need to create 
global variables that each of the methods will use. This is considered a better practices than
using global variables in your code.

What concepts were solidified in this challenge, and what concepts are still confusing?
Ans: I was able to grasp arrays and hashes in this challenge. I was strugling
through the exercises for week 5, but after this pairing session it helped me get past 
some mental blocks that I had. I'm still confused about how to best use all of the
built in methods on hashes, but that's probably going to be a work in progress for the duration
of DBC.

=end


