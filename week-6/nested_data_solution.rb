# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts: 1
# ============================================================

p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts: 3
# ============================================================

# p hash[:outer][:innter]["almost"][3]
# p hash[:outer][:innter]["almost"][3]
p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts: 1
# ============================================================

p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

#Initial Solution

# def add_five(array)
#   array.map! do |value|
#     if value.is_a? Integer
#       value + 5
#     elsif value.is_a? Array
#       value.map! do |array_value|
#       array_value + 5
#       end
#     end
#   end
#     array
# end   

# p add_five(number_array)

# Refactor

class AddFive
  
  def initialize(array)
    @array = array
    @five = 5
  end
  
  def add_five_to_all
    @array.map! do |value| 
      if value.is_a? Integer
        addition(value)
      elsif value.is_a? Array
        value.map! { |nested_number| addition(nested_number) }
      end
    end
  end
  
  private

  def addition(number)
    number += @five
  end
  
end

example = AddFive.new(number_array)
p example.add_five_to_all


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

def output_names(array)
  array.flatten.map! {|name| name + "ly"}  
end

p output_names(startup_names)
p "Could not solve iteration through nested arrays"


# Reflection

=begin
What are some general rules you can apply to nested arrays?
ANS: To access something in a nested array, you can use a series of brackets specifying each nested item. This 
allows you access an item even when there are several arrays and hashes. For example, hash[:key1][0][3][:key7].

What are some ways you can iterate over nested arrays?
ANS: You can itereate over an array using .each and .map. You'll need to be careful to check what kind of data has been
yielded to the block so you are not trying to running incompatiable methods on an object. This part has been most challenging
for me and will require some research.

Did you find any good new methods to implement or did you re-use one you were already 
familiar with? What was it and why did you decide that was a good option?
ANS: I reused many that I was previously familiar with. I used is_a to make sure my methods were being run on the correct objects
and map! for iterating. I need to research this more.
 
=end


