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