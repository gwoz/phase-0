# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

# def cartman_hates(thing)
#  while true
#    puts "What's there to hate about #{thing}?"
#  end
# end

# This is a tricky error. The line number may throw you off.
# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# 169
# 3. What is the type of error message?
# syntax error
# 4. What additional information does the interpreter provide about this type of error?
# unexpected end-of-input
# 5. Where is the error in the code?
# at the end of the file
# 6. Why did the interpreter give you this error?
# there was no end to while so it kept searching the whole file for it

# --- error -------------------------------------------------------

# south_park = 123

# 1. What is the line number where the error occurs?
# 35
# 2. What is the type of error message?
# in '<main>''
# 3. What additional information does the interpreter provide about this type of error?
# undefined local variable or method 'south_park' for main:Object (NameError)
# 4. Where is the error in the code?
# where the variable is supposed to be defined
# 5. Why did the interpreter give you this error?
# south_park was not properly defined as a variable or a method 

# --- error -------------------------------------------------------

# def cartman()
# end

# 1. What is the line number where the error occurs?
# 50
# 2. What is the type of error message?
# in '<main>''
# 3. What additional information does the interpreter provide about this type of error?
# undefined method `cartman' for main:Object (NoMethodError)
# 4. Where is the error in the code?
# in the definition of the method before cartman()
# 5. Why did the interpreter give you this error?
# this method was not properly defined

# --- error -------------------------------------------------------

# def cartmans_phrase(argument1)
#  puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# 66
# 2. What is the type of error message?
# in `cartmans_phrase': wrong number of arguments (1 for 0)
# 3. What additional information does the interpreter provide about this type of error?
#  (Argument Error)
# 4. Where is the error in the code?
# in the arguments when cartmans_phrase method is called
# 5. Why did the interpreter give you this error?
# methods take a specific number of arguments to work correctly

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end

# cartman_says("Some test code!")

# 1. What is the line number where the error occurs?
# 85
# 2. What is the type of error message?
# in `cartman_says': wrong number of arguments (0 for 1)
# 3. What additional information does the interpreter provide about this type of error?
# (Argument Error)
# 4. Where is the error in the code?
# where we call the method cartman_says
# 5. Why did the interpreter give you this error?
# the method was defined with one argument and none were given when it was called



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'test')

# 1. What is the line number where the error occurs?
# 106
# 2. What is the type of error message?
# in `cartmans_lie': wronh number of arguments (1 for 2)
# 3. What additional information does the interpreter provide about this type of error?
# (Argument Error)
# 4. Where is the error in the code?
# the arguments for the method cartmans_lie
# 5. Why did the interpreter give you this error?
# when we call the method cartmans_lie we must provide two arguments and only one was actually provided

# --- error -------------------------------------------------------

# "Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# 125
# 2. What is the type of error message?
# in `*': String can't be coerced into Fixnum
# 3. What additional information does the interpreter provide about this type of error?
# (Type Error) from errors.rb:125:in `<main>'
# 4. Where is the error in the code?
# at the start of the 125th row
# 5. Why did the interpreter give you this error?
# you can not multiple a number by a string, but you can multiply a string by a number

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/1


# 1. What is the line number where the error occurs?
# 140
# 2. What is the type of error message?
# in `/;: divided by 0 
# 3. What additional information does the interpreter provide about this type of error?
# (ZeroDivisionError) from errors.rb140:in `<main>''
# 4. Where is the error in the code?
# in the value set for amount_of_kfc_left
# 5. Why did the interpreter give you this error?
# you can not divide a number by 0 as it's undefined

# --- error -------------------------------------------------------

# require_relative("cartmans_essay.md")

# 1. What is the line number where the error occurs?
# 156
# 2. What is the type of error message?
# in `require_relative': cannot load such file --
# 3. What additional information does the interpreter provide about this type of error?
# /Users/mike/DevBootcamp/phase-0/week-4/cartmans_essay.md (LoadError)
# 4. Where is the error in the code?
# in the argument passed to require_relative
# 5. Why did the interpreter give you this error?
# there is no cartmans_essay.md file in the directory where the method is looking


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# Which error was the most difficult to read?
# Ans: I found the unexpected end-of-input to be most difficult to read. This issue was identified as being at the end of the file even though the code was at the top of the file.

# How did you figure out what the issue with the error was?
# Ans: I looked at the next line of code that should have executed even though the error was at the bottom of the page. I started from the inside of the method and worked out to make sure all of the syntax was correct.

# Were you able to determine why each error message happened based on the code? 
# Ans: Yes, I've had experience with this kind of troubleshooting before and actually kind of enjoy it. It becomes a puzzle that requires you to understand what the program wants and what it's actually receiving.

# When you encounter errors in your future code, what process will you follow to help you debug?
# Ans: I will skip straight to the line of the error and look for phrases, words, or characters included in the error message. For example, I would look for variable names, method names, or other items I recently changed as a starting point.


