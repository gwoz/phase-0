# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [with: David Lange].

# 0. total Pseudocode
=begin
Input: Collection of numbers
Output: Total of the collection of numbers
Steps to solve the problem:
Create a container that starts at 0 that will hold the running total
Add each number to the running total
Stop when there are no more numbers to add
Return the running total
=end

# 1. total initial solution
=begin
def total(array)
	sum = 0
	for i in array
		sum += i
	end
	return sum
end
=end

# 3. total refactored solution
def total(array)
	sum = 0
	array.inject {|sum,x| sum + x}
end


# 4. sentence_maker pseudocode
=begin
Input: A collection of words
Output: A sentence from the words with proper grammar
Steps to solve the problem:
Create a container for the sentence
Add a word to the sentence
Add a space after the word
Stop adding spaces if the last word has been reached
Add a period to the end of the sentence
Capitalize the first letter of the first word in the sentence
=end

# 5. sentence_maker initial solution
=begin
def sentence_maker(array)
	word_count = 1
	new_sentence = ""
		for i in array
			if word_count < array.count
				new_sentence << i.to_s
				new_sentence << " " 
				word_count += 1
			elsif
				word_count = array.count
				new_sentence << i.to_s
				new_sentence << "."
			end
		end
	return new_sentence.capitalize	
end
=end

# 6. sentence_maker refactored solution
def sentence_maker(array)
	array.join(" ").capitalize << "."
end



