# I worked on this challenge [with: Pietro Martini/Mike Gwozdek].


# Your Solution Below
def valid_triangle?(a, b, c)
	if a > 0 && b > 0 && c > 0
    	if (a + b) > c && (a + c) > b && (b + c) > a
      		return true
    	else
      		return false
    	end
  	end
end