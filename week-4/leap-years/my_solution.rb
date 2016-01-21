# Leap Years

# I worked on this challenge [by myself].


# Your Solution Below
def leap_year?(year)
	if (year%4 == 0 && year%100 == 0) && year%400 != 0
		false
	elsif year%4 == 0
		true
	elsif year%100 == 0 && year%400 == 0
		true
	else
		false
	end
end