# Numbers to English Words


# I worked on this challenge [by myself].
# This challenge took me [2] hours.


# Pseudocode
# Go to 100 and 1000 as a stretch
=begin
INPUT: Number
OUTPUT: Number in english
STEPS:
  Create placeholder for remaining number
  IF number is less than 20 
    WHEN 1 then "One"
    ...
    WHEN 19 then "Nineteen"
  IF number is greater than 20 and less than 30
    WHEN 20 to less than 30 combine "Twenty" and use the same method for the last digit
  ...
    WHEN 90 to less than 100 combine "Twenty" and use the same method for the last digit
  IF number is greater than 100 and less than 1000
    THEN "One Hundred" and use the same method for the last two digits
  IF number is greater than 1000 and less than 10,000
    THEN "One Thousand" and use the same method for the last three digits
  IF number is greater than 10,000 and less than 1,000,000
    THEN use the same method for the first two digits plus "Thousand" 
=end


# Initial Solution


# def num_to_english(num)
#   case num
#     when 1; print "One "
#     when 2; print "Two "
#     when 3; print "Three "
#     when 4; print "Four "
#     when 5; print "Five "
#     when 6; print "Six "
#     when 7; print "Seven "
#     when 8; print "Eight "
#     when 9; print "Nine "
#     when 10; print "Ten "
#     when 11; print "Eleven "
#     when 12; print "Twelve "
#     when 13; print "Thirteen "
#     when 14; print "Fourteen "
#     when 15; print "Fifteen "
#     when 16; print "Sixteen "
#     when 17; print "Seventeen "
#     when 18; print "Eighteen "
#     when 19; print "Nineteen "
#   end
#   if num.between?(20,29); print "Twenty "
#     num_to_english(num - 20)
#   elsif num.between?(30,39); print "Thirty "
#     num_to_english(num - 30)
#   elsif num.between?(40,49); print "Forty "
#     num_to_english(num - 40)
#   elsif num.between?(50,59); print "Fifty "
#     num_to_english(num - 50)
#   elsif num.between?(60,69); print "Sixty "
#     num_to_english(num - 60)
#   elsif num.between?(70,79); print "Seventy "
#     num_to_english(num - 70)
#   elsif num.between?(80,89); print "Eighty "
#     num_to_english(num - 80)
#   elsif num.between?(90,99); print "Ninety "
#     num_to_english(num - 90)
#   elsif num.between?(100,999)
#     num_to_english(num.to_s[0].to_i)
#     print "Hundred "
#     num_to_english(num.to_s[1..2].to_i)
#   elsif num == 1000; print "One Thousand"
#   elsif num.between?(1000,9999)
#     num_to_english(num.to_s[0].to_i)
#     print "Thousand "
#     num_to_english(num.to_s[1].to_i)
#     print "Hundred "
#     num_to_english(num.to_s[2..3].to_i)
#   elsif num == 10000; print "Ten Thousand"
#   elsif num.between?(10000,99999)
#     num_to_english(num.to_s[0..1].to_i)
#     print "Thousand "
#     num_to_english(num.to_s[2].to_i)
#     print "Hundred "
#     num_to_english(num.to_s[3..4].to_i)
#   elsif num == 100000; print "One Hundred Thousand"
#   elsif num.between?(100000,999999)
#     num_to_english(num.to_s[0].to_i)
#     print "Hundred "
#     num_to_english(num.to_s[1..2].to_i)
#     print "Thousand "
#     num_to_english(num.to_s[3].to_i)
#     print "Hundred "
#     num_to_english(num.to_s[4..5].to_i)
#   elsif num == 1000000; print "One Million"  
#   elsif num.between?(1000000,9999999)
#     num_to_english(num.to_s[0].to_i)
#     print "Million "
#     num_to_english(num.to_s[1].to_i)
#     print "Hundred "
#     num_to_english(num.to_s[2..3].to_i)
#     print "Thousand "
#     num_to_english(num.to_s[4].to_i)
#     print "Hundred "
#     num_to_english(num.to_s[5..6].to_i)
#   end
# end



# Refactored Solution

def num_to_english(num)
  case num
    when 1; print "One "
    when 2; print "Two "
    when 3; print "Three "
    when 4; print "Four "
    when 5; print "Five "
    when 6; print "Six "
    when 7; print "Seven "
    when 8; print "Eight "
    when 9; print "Nine "
    when 10; print "Ten "
    when 11; print "Eleven "
    when 12; print "Twelve "
    when 13; print "Thirteen "
    when 14; print "Fourteen "
    when 15; print "Fifteen "
    when 16; print "Sixteen "
    when 17; print "Seventeen "
    when 18; print "Eighteen "
    when 19; print "Nineteen "
  end
  # Refactored for readability
  if num.between?(20,29); print "Twenty "; num_to_english(num - 20)
  elsif num.between?(30,39); print "Thirty "; num_to_english(num - 30)
  elsif num.between?(40,49); print "Forty "; num_to_english(num - 40)
  elsif num.between?(50,59); print "Fifty "; num_to_english(num - 50)
  elsif num.between?(60,69); print "Sixty "; num_to_english(num - 60)
  elsif num.between?(70,79); print "Seventy "; num_to_english(num - 70)
  elsif num.between?(80,89); print "Eighty "; num_to_english(num - 80)
  elsif num.between?(90,99); print "Ninety "; num_to_english(num - 90)
  elsif num.between?(100,999)
    num_to_english(num.to_s[0].to_i)
    print "Hundred "
    num_to_english(num.to_s[1..2].to_i)
  elsif num == 1000; print "One Thousand"
  elsif num.between?(1000,9999)
    num_to_english(num.to_s[0].to_i)
    print "Thousand "
    num_to_english(num.to_s[1].to_i)
    print "Hundred "
    num_to_english(num.to_s[2..3].to_i)
  elsif num == 10000; print "Ten Thousand"
  elsif num.between?(10000,99999)
    num_to_english(num.to_s[0..1].to_i)
    print "Thousand "
    num_to_english(num.to_s[2].to_i)
    print "Hundred "
    num_to_english(num.to_s[3..4].to_i)
  elsif num == 100000; print "One Hundred Thousand"
  elsif num.between?(100000,999999)
    num_to_english(num.to_s[0].to_i)
    print "Hundred "
    num_to_english(num.to_s[1..2].to_i)
    print "Thousand "
    num_to_english(num.to_s[3].to_i)
    print "Hundred "
    num_to_english(num.to_s[4..5].to_i)
  elsif num == 1000000; print "One Million"  
  elsif num.between?(1000000,9999999)
    num_to_english(num.to_s[0].to_i)
    print "Million "
    num_to_english(num.to_s[1].to_i)
    print "Hundred "
    num_to_english(num.to_s[2..3].to_i)
    print "Thousand "
    num_to_english(num.to_s[4].to_i)
    print "Hundred "
    num_to_english(num.to_s[5..6].to_i)
  end
end


# Driver Code


num_to_english(101111)


# Reflection

=begin
What concepts did you review in this challenge?
ANS: I learned recursion in this challenge! It's not as hard as I thought it would be. Basically a number
is passed through the method once. The method prints out text based on the first part of the number and then the
rest of the number is sent back to the same method until there is nothing left.

What is still confusing to you about Ruby?
ANS: Working with inheritance and determining the best methods to use for iteration is still a bit confusing. This
seems like something that will come with time and experience.

What are you going to study to get more prepared for Phase 1?
ANS: I plan to study the Ruby basics including syntax, enumerables, and use of classes.

=end

