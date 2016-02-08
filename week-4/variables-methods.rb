puts "Hello there, and what's your name?"
name = gets.chomp
puts "Your name is " + name + "? What a lovely name!"
puts "Pleased to meet you, " + name + ". :)"

puts "What is your favorite number?"
favnum = gets.chomp
newnum = favnum.to_i + 1
puts "Well, " + newnum.to_s + " is a much bigger, better number."

[Exercise 4.3.1](https://github.com/egumerlock/phase-0/blob/master/week-4/address/my_solution.rb)

[Exercise 4.3.2](https://github.com/egumerlock/phase-0/blob/master/week-4/math/my_solution.rb)

#
=begin

How do you define a local variable?
  You define a local variable by setting it equal to whatever value you want it to have. Ex. `my_var = 5`
How do you define a method?
  You define a method by writing `def my_method` then giving it a set of variables it takes by either writing them separated by commas or writing them within parantheses.
What is the difference between a local variable and a method?
  A variable is a store of information, while a method is something that does something, or in other words more like a verb.  A variable would be a noun, whereas a method is more like a verb.
How do you run a ruby program from the command line?
  By typing `ruby file-name` the command line will run your ruby file.
How do you run an RSpec file from the command line?
  You RSpec a file from the command line by typing `rspec spec-file-name`.  If your file has the correct spec lines, it will rspec your file.
What was confusing about this material? What made sense?
  Most of the material made sense, but it was hard to get back into the groove of Ruby after being in the world of HTML and CSS for awhile.  Methods are still quite confusing, but it is the first day back in awhile to Ruby.
=end

