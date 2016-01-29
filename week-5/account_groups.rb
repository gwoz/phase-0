# Pseudocode

=begin
Input: List of all student names
Output: Accountability Groups of 4 - 5 people
Steps:
	Create an empty list to temporarily hold individuals
	Create an empty collection to hold the final groups
	Create a counter
	FOR each individual in the list of all student names
		IF the counter is less than 5 
			THEN add each name to the placeholder group
			THEN increment the counter by 1
		IF the counter equals 5
			THEN add the list to the collection for the final group
			THEN reset the counter to 0
	Output the Accountability Groups
=end

# Initial Solution

names = ["Alivia Blount","Alyssa Page","Alyssa Ransbury","Andria Reta","Austin Dorff","Autumn McFeeley","Ayaz Uddin","Ben Giamarino","Benjamin Heidebrink","Bethelhem Assefa","Bobby Reith","Dana Breen","Brett Ripley","Rene Castillo","Justin J Chang","Ché Sanders","Chris Henderson","Chris Pon","Colette Pitamba","Connor Reaumond","Cyrus Vattes","Dan Heintzelman","David Lange","Eduardo Bueno","Liz Roche","Emmanuel Kaunitz","FJ Collins Jr.","Frankie Pangilinan","Ian Fricker","Ian Thorp","Ivy Vetor","Jack Baginski","Jack Hamilton","JillianC","John Craigie","John Holman","John Maguire","John Pults","Jones Melton","Tyler Keating","Kenton Lin","Kevin Serrano","Kevin Sullivan","Kyle Rombach","Laura Montoya","Luis Ybarra","Charlotte Manetta","Marti Osteyee-Hoffman","Megan Swanby","Mike London","Michael Wang","Michael Yao","Mike Gwozdek","Miqueas Hernandez","Mitchell Kroska","Norberto Caceres","Patrick Skelley","Peter Kang","Philip Chung","Phillip Barnett","Pietro Martini","Robbie Santos","Rokas Simkonis","Ronu Ghoshal","Ryan Nebuda","Ryan Smith","Saralis Rivera","Sam Assadi","Spencer Alexander","Stephanie Major","Taylor Daugherty","Thomas Farr","Maeve Tierney","Tori Huang","Alexander Williams","Victor Wong","Xin Zhang","Zach Barton"]

=begin
def make_group(array)
  temp = []
  final_groups = {}
  counter = 0
  group_num = 1
  array.each do |x|
    if counter < 5
      temp << x
      counter += 1
    elsif counter == 5
      final_groups[group_num] = temp
      counter = 0
      temp = []
      group_num += 1
    end
  end
  final_groups
end
=end

# Refactor

def make_group(array)
  array.shuffle.each_slice(5).to_a
end

p make_group(names)



# Reflection
=begin
What was the most interesting and most difficult part of this challenge?
Ans: I thought the most interesting part was learning to string together several methods. This is something
I have been hesitant to do because it's harder to follow the logic, but I'm now becoming more comfortable with
it. The most difficult part was figuring out how to make the groups different each time.

Do you feel you are improving in your ability to write pseudocode and break the problem down?
Ans: Yes, I feel like I'm writing strong pseudocode now which lets me get to an initial solution quickly. My initial
solutions are always long, but they aren't hard for me to build and they get the job done.

Was your approach for automating this task a good solution? What could have made it even better?
Ans: I think it was pretty good. It creates randomized groups of 5 each time you call the method. I could have 
made it better by building my solution that would handle odd numbers of individuals better. I could have also 
created a cleaner output of the list instead of just an array.

What data structure did you decide to store the accountability groups in and why?
Ans: I initially decided to structure my groups as hashes withe the group number as the key and the individuals 
as an array. I eventually decided to just use arrays in my refactored solutions since the index could serve as 
the group number. In true programming school form, there would be a group 0! ;)

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
Ans: I learned .shuffle which randomizes the items in an array. This could be really helpful for presenting randomized 
content suggestions on a website. The goofy Slack welcome messages that are randomly displayed when you log in could even 
be created using .shuffle.
=end



