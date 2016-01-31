# Research Methods

# We spent [several] of hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# # Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source.find_all {|x| x.to_s.include? thing_to_find}
end

def my_hash_finding_method(source, thing_to_find)
  source.flat_map {|k,v| k if v == thing_to_find}.to_a.compact
end

# # Identify and describe the Ruby method(s) you implemented.
=begin
.find_all -> This allowed me to iterate through each item in the i_want_pets array and keep only those that included the string I was looking for.
.include? -> This lets you check if the string contains certain text.
.flat_map -> This returns a new array of each element concatenated
.compact -> This removes any nil elements from an array. The flat_map method will return nil if the value does not meet
my criteria so I had to remove them from the new array. This method quickly does that. 
=end

def my_array_modification_method!(pets, thing_to_modify)
  pets.map! do |x|
    if x.is_a? Integer
      x += thing_to_modify
    else
      x
    end
  end
end

def my_hash_modification_method!(source, thing_to_modify)
  source.select! do |pet, age|
    age += thing_to_modify
    source[pet] = age
  end
  p source
end

p my_array_modification_method!(i_want_pets, 2)
my_hash_modification_method!(my_family_pets_ages, 2)


# Identify and describe the Ruby method(s) you implemented.
=begin
  The first method I used was .map which essentially does the same thing as .each. The only difference
  is that the array will be permanently changed if you use the bang! at the end. I also used '.is_a? Integer?'
  I found this helpful to target any number in the array instead of manually accessing the index with a number.
  For the sescond method I used .select! which returns a new object filled with the original items
  where the block you gave it returned true.
=end
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
=begin
You can use map and select using brackets or the do block like so:
  array.map! { |x| x.doSomething}
  array.map! do |x|
    do something
  end
  hash.select! { |x| x.doSomething}
  hash.select! do |x|
    do something
  end
=end


# Person 3
def my_array_sorting_method(source)
  array = []
  source.each do |element|
    array << element.to_s
  end
  array.sort!
  result = []
  array.each do |element|
    if element.to_i == 0
      result << element
    else
      result << element.to_i
    end
  end
  result
end

def my_hash_sorting_method(source)
   array = source.to_a
   result = array.sort_by do |element|
     element[1]
   end
   result
end


# Teach your accountability group how to use the methods

# to_i

# "5".to_i
#   => 5
# 5.to_i  => 5

# "hello world".to_i
#   => 0

# to_a

# {a: 1, b:2, c:3}.to_a
#   => [[:a, 1], [:b, 2], [:c, 3]]

# to_s

# 5.to_s
#   => "5"

# "hello world".to_s
#   => "hello world"

# sort

# [2,3,5,1,4].sort
#   => [1,2,3,4,5]

# sort_by!

# [[:c, 3], [:a, 1], [:b, 2]].sort_by! { |element| element[1] }
#   => [[:a, 1], [:b, 2], [:c, 3]]

# Share any tricks you used to find and decipher the Ruby Docs


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
   source.reject! { |element| element.to_s.include?(thing_to_delete)}
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.reject! { |key, value| key == thing_to_delete}
end

# Identify and describe the Ruby method(s) you implemented.
# to_s: changes the object to Object type:String.

# include?(obj) → true or false
# looks inside an Array and returns true if the given object is found inside the Array
# Array#reject! {|item| block } → ary or nil
# Array#reject! iterates though an Array and rejects/deletes any element that
# computes to true inside the block. The bang(!) at the end of reject makes the
# method directly change the given Array instead of returning a new Array
# Hash#reject! {| key, value | block } → a_hash
# rHash#reject! iterates through a Hash and deletes any element 
# that computes to true inside the block. Reject is the same as delete_if except it 
# works on and returns the Hash.

# How to use the methods
# my_array = [1,2,3,4]
# my_array[0].to_s => "1"
# my_array.reject! { |el| el == 1}  => [2,3,4]

# my_hash = {"billy" => "bob", "mickey" => "rooney"}
# my_hash.reject! {  |key, value| key == "mickey"} => {"billy" => "bob"}

# TRICKS
# Learning how to read the method signature helps alot with getting a grip on 
# how to use the method easier


# Person 5

# Pseduocode

def my_array_splitting_method(array)
  integers = array.map { |n| n if n.is_a? Integer}.to_a.compact
  other = array.map { |n| n if n.is_a? String}.to_a.compact
  output = integers, other
end

def my_hash_splitting_method(source, age)
  below_age = source.select { |k,v| v <= age}.to_a.compact
  above_age = source.select { |k,v| v > age}.to_a.compact
  output = below_age, above_age
end

# Identify and describe the Ruby method(s) you implemented.
=begin
.map -> This creates a new array of values after each element is evaluated by the following code block
.to_a -> Once I had an array of values that met the criteria, I put all of them inside another array for grouping
purposes. One group was integers and the other was the remaining characters.
.compact -> This eliminates any nil values from an array. My approach resulted in nil values when false which cluttered 
the ending array with unnecessary indexes.
.select -> This creates a new array of values after each element is evaluated by the following code block. This was
useful to only keep the key/value pairs that met a certain criteria.

=end