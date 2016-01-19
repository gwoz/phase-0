
4.2 Numbers, Letters, and Variable Assignment
=============================================

Links to Assignments 4.2.1 -> 4.2.3
-----------------------------------

[4.2.1 Defining Variables](https://github.com/gwoz/phase-0/blob/master/week-4/defining-variables.rb "4.2.1 Defining Variables")

[4.2.2 Simple String](https://github.com/gwoz/phase-0/blob/master/week-4/simple-string.rb "4.2.2 Simple String")

[4.2.3 Basic Math](https://github.com/gwoz/phase-0/blob/master/week-4/basic-math.rb "4.2.3 Basic Math")

Release 1: Summarize
--------------------

**What does puts do?**

Ans: Puts stands for put string. This will return a nil value and display the output on a new line.

**What is an integer? What is a float?**

Ans: An integer is a number that can be positive, neagative, or zero (Ex: -3, -2, -1, 0, 1, 2, 3). A float is a number that can be positive, negative, or zero but includes decimal places (Ex: -1.225, 0.0000, 450.49801827)

**What is the difference between float and integer division? How would you explain the difference to 
someone who doesn't know anything about programming?**

Ans: Integer division displays the result after rounding DOWN to the nearest integer. Float division displays the result including decimal places. You should use integers when it should be impossible to have part of something (Ex: You can purchase 4 coffee cups from Amazon not 4.345 coffee cups) and you should use float where you need to be exact such as displaying GPS coordinates (Ex: Your GPS position is 40.78174021 -74.1290124).


```ruby
# Output number of hours in a year 

puts 24 * 365

=begin
Assumptions:
24 hours in a day
365 days in a year
=end
```

```ruby
# Output number of minutes in a decade

puts 60 * 24 * 365 * 10

=begin
Assumptions:
60 minutes in an hour
24 hours in a day
365 days in a year
10 years in a decade
=end
```


Release 7: Reflect
------------------

**How does Ruby handle addition, subtraction, multiplication, and division of numbers?**

Ans: Ruby handles these using the + - * and / operators on integers and floats.

**What is the difference between integers and floats?**

Ans: Integers are numbers that are negative, positive or zero without decimal places. Floats are numbers that are negative, positive, or zero with decimal places.

**What is the difference between integer and float division?**

Ans: Integer division displays the result after rounding DOWN to the nearest integer. Float division displays the result including decimal places.

**What are strings? Why and when would you use them?**

Ans: Strings are a group of characters including numbers, letters, symbols, or spaces that are enclosed by '' or "". You would typically use strings to hold letters (Ex: Names), but you could also use them to hold a combination of characters (Ex: Addresses, sentences, dates)

**What are local variables? Why and when would you use them?**

Ans: Local variables are limited to a method you create. You would use them to make only certain information available to use in a method (Ex: You want to give a user the ability to set their own timezone, but you do not want this to affect the timezone for the entire program)

**How was this challenge? Did you get a good review of some of the basics?**

Ans: I liked this challenge. It's my first time digging into numbers since gradeschool so it was a nice refresher! It was tedious at times because I've worked with each of these concepts before, but it's nice to finally get started with Ruby.

