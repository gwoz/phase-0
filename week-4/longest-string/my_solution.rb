# Longest String

# I worked on this challenge [by myself].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below

# Solution 1 - Passes 3 of 6
=begin
def longest_string(list_of_words)
	longest_word = ""
	if list_of_words != []
		for i in list_of_words
			if i.length > longest_word.length
				longest_word = i
			else
				return longest_word
			end
		end
	else
		return nil	
	end
end
=end


#Solution 2 - Passes 6 of 6

def longest_string(list_of_words)
	list_of_words.max_by {|x| x.length}
end