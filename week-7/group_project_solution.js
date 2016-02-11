/*
  Input: A collection of numbers that are even or odd 
  Output: The sum, mean, and median of numbers in the collection
  Steps: 
  	CREATE a collection of numbers that are even or odd

  	CREATE a method to find the sum of those numbers
  	  Create a container to hold the running sum
  	  FOR every number in the collection ADD it to the running sum
  	  RETURN the running sum

  	CREATE a method to find the mean of those numbers
  	  Create a container to hold the running sum
  	  Create a container to hold the total number of items in the collection
  	  FOR every number in the collection ADD it to the running sum
  	  RETURN the result of dividing the running sum by the total number of items in the collection

  	CREATE a method to find the median of those numbers
  	  Create a container to hold the total number of items in the collection
  	  Create a container to hold the collection of numbers sorted from smallest to largest
  	  IF the total number of items in the collection is ODD
  	  	Divide the total number of items in the collection by 2 and round DOWN to the nearest integer
  	  	RETURN the number from the sorted collection that corresponds to that position
  	  IF the total number of items in the collection is EVEN
  	  	Create a container to hold the upper value
  	  	Create a container to hold the lower value
  	  	Divide the total number of items in the collection by 2
  	  	  Set the upper value equal to the result
  	  	  Set the lower value equal to the upper value minus 1
  	  	RETURN the result of adding the upper value and the lower value together and dividing by 2
*/