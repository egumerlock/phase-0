####What does puts do?
Puts prints pretty much anything you put after it.  In the case of calculations, it will print the answer, and in the case of strings, you must put the string in quotes or else it will not print.  It also returns nil by default, and the way in which it prints to the console is with a new line.
####What is an integer? What is a float?
An integer is a number with no decimals.  A float is a number with decimals, or a floating-point number.
####What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
Float division is "normal" division in the sense that it willbe the exact division that you ask for.  The calculation will return a number with decimal points.  Integer division is quite different in that it will return a rounded down answer to the closest integer.  Why round down? Well since many questions are calculated with the question, how many x can I have? , you will always round down to get the correct answer to that question.

####Hours in a Year
`puts 24 * 365`
8760

####Minutes in a decade
`puts 60 * 24 * 365 * 10`
5256000

[Exercise 4.2.1](https://github.com/egumerlock/phase-0/blob/master/week-4/defining-variables.rb)
[Exercise 4.2.2](https://github.com/egumerlock/phase-0/blob/master/week-4/simple-string.rb)
[Exercise 4.2.3](https://github.com/egumerlock/phase-0/blob/master/week-4/basic-math.rb)

####How does Ruby handle addition, subtraction, multiplication, and division of numbers?
Ruby handles arithmetic by computing the arithmetic and then printing to the console the answer.  For strings, it can add and multiply strings.
####What is the difference between integers and floats?
Integers are whole numbers with no decimals.  Floats are numbers with decimals.
####What is the difference between integer and float division?
Float division will give you the exact answer of the division question.  Integer division gives you a rounded down answer of the division problem.
####What are strings? Why and when would you use them?
Strings are phrases or sets of letters that can be printed, saved as variables, etc.  You would use them if you wanted to communicate an answer or print something to the console for others to read.
####What are local variables? Why and when would you use them?
Local variables are variables that point to a value locally.  You would use them to store values, strings or numbers.
####How was this challenge? Did you get a good review of some of the basics?
This challenge was a nice review of Ruby basics, the book was also very easy to follow and informative.