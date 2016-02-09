# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# 171
# 3. What is the type of error message?
# syntax error
# 4. What additional information does the interpreter provide about this type of error?
# expecting keyword_end
# 5. Where is the error in the code?
# Line 16, it is missing an end.
# 6. Why did the interpreter give you this error?
# The interpreter was expecting an end to the method, which never came, which is why it asks for it at the end of the code, line 171.

# --- error -------------------------------------------------------

south_park = "South Park"

# 1. What is the line number where the error occurs?
# Line 36
# 2. What is the type of error message?
# undefined local variable <main>
# 3. What additional information does the interpreter provide about this type of error?
# south_park is an undefined local variable or method
# 4. Where is the error in the code?
# It doesn't show, but line 36 because the variable is undefined.
# 5. Why did the interpreter give you this error?
# The variable requires a definition.

# --- error -------------------------------------------------------
def cartman
end

cartman()

# 1. What is the line number where the error occurs?
# 51
# 2. What is the type of error message?
# <main>
# 3. What additional information does the interpreter provide about this type of error?
# undefined method cartman for main:Object
# 4. Where is the error in the code?
# Line 51, it is undefined.
# 5. Why did the interpreter give you this error?
# It is calling a method that doesnt exist.

# --- error -------------------------------------------------------

def cartmans_phrase x
  puts x + "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# 68, 72
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments
# 4. Where is the error in the code?
# line 72, there is no number for the argument
# 5. Why did the interpreter give you this error?
# There is no variable to put the information from the call command into.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says ("Josh!")

# 1. What is the line number where the error occurs?
# 91
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments
# 4. Where is the error in the code?
# line 91, there is no argument
# 5. Why did the interpreter give you this error?
# There is no information to feed into the method, no argument on line 91.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Jose')

# 1. What is the line number where the error occurs?
# 108
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments
# 4. Where is the error in the code?
# line 112
# 5. Why did the interpreter give you this error?
#  The interpreter was expecting 2 arguments or variables when calling the method.
#

# --- error -------------------------------------------------------

5.times do puts "Respect my authoritay!"
end

# 1. What is the line number where the error occurs?
# 128
# 2. What is the type of error message?
# TypeError
# 3. What additional information does the interpreter provide about this type of error?
# String cant be coerced into Fixnum
# 4. Where is the error in the code?
# Line 128, the string
# 5. Why did the interpreter give you this error?
# You cant multiply a string by a number, if you wanted to display it 5 times you would have to puts it 5.times.

# --- error -------------------------------------------------------

amount_of_kfc_left = 20 / 1


# 1. What is the line number where the error occurs?
# 144
# 2. What is the type of error message?
# ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# divided by 0
# 4. Where is the error in the code?
# Line 144, the division by zero
# 5. Why did the interpreter give you this error?
# Dividing by 0 is impossible.

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 160
# 2. What is the type of error message?
# LoadError
# 3. What additional information does the interpreter provide about this type of error?
# cannot load such file
# 4. Where is the error in the code?
# line 160, there is no such file.
# 5. Why did the interpreter give you this error?
# The file does not exist in the directory specified.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin
Which error was the most difficult to read?
The cartman_hates method error was the most difficult to read, as I was stumped for awhile trying to figure out how the error could be on the last line of code, if it was way at the top.
How did you figure out what the issue with the error was?
I put an end in the code because thats what I thought was wrong with it, and it worked.  However, it would still make more sense that the error would occur on the line where the method remained unended, but ruby can't deduce that as the rest of your code could be within that method.

Were you able to determine why each error message happened based on the code?
Yes, reading the code helped me determine why each error message was occurring.  Without reading the code and simply the error message would not really be enough information to fix the bug.

When you encounter errors in your future code, what process will you follow to help you debug?
I will go through these 5 steps and really try to deduce what is causing the bug.  Reading the code definitely helps.

=end