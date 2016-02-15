
# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# The input is an integer with however many zeros.
# What is the output? (i.e. What should the code return?)
# The code should return an integer separated by commas at the thousands, hundred thousands, etc, like normal mathematic notation.
# What are the steps needed to solve the problem?
# 1. Split the number into digits in an array
# 2. Make a variable equal to the number of digits divided by 3
# 3. Check if variable is smaller than 4, if yes print
# 4. Insert a "," for every time the variable has 1 in the correct spot, to integer
# 5. Print the joined array

# 1. Initial Solution
def separate_comma(number)
  n = number.to_s.split('')
  commas = n.size/3.0
  if n.size < 4
    return number.to_s
  elsif n.size % 3 == 0
    a = -4
    (commas.to_i - 1).times do |i|
      n.insert(a, ",")
      a -= 4
    end
    return n.join("")
  else
    a = -4
    commas.to_i.times do |i|
      n.insert(a, ",")
      a -= 4
    end
  return n.join("")
  end
end



# 2. Refactored Solution

def separate_comma(number)
  number.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
end


# 3. Reflection
=begin

What was your process for breaking the problem down? What different approaches did you consider?
My process for the problem was to break down the number to amount of digits, then insert a comma in every place that required a comma, every 3 places (4th place in Ruby notation).  Doing this from the right is more difficult as you don't really know where the comma fits in because it depends on the length of the number.  Hence, the -4 position, which counts from the right.  I considered using .length before splitting the number up into an array, but .split splits into individual digits, which allows for easy counting with .size.

Was your pseudocode effective in helping you build a successful initial solution?
Without pseudocoding, I probably would not have been able to solve the problem.  It is imperative that you know what you are trying to accomplish in each step, without writing the specific Ruby, but knowing mathmatically or logically what you are trying to do.

What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
I used .gsub(/(\d{3})(?=\d)/, "\\1,") which is a complex command that can achieve many things, depedning on the inputs.  They definitely changed the way my code works by saying, for every d, which is defined by every 3 spaces, perform an action which is add a comma after two spaces and an integer (every 3 places).  First, this must be reversed in order to have the proper counting method, as ruby counts from the left.  It is then reversed again to give the proper answer in mathematical notation.  I didn't have such reversals in my code, simply just a method that counted instead from the right.  It was difficult at first to comprehend the notation of the new refactored solution, but when understood, performs a number of different actions in the specified manner.
How did you initially iterate through the data structure?
I used .times do to iterate through the data structure.  This seemed to be the most practical as I was using an integer as the number of times this should occur.
Do you feel your refactored solution is more readable than your initial solution? Why?
Yes, after getting used to the notation, it seems more readable than the initial one because simplifies the code into one line, and the variables of the method are easily changed if I wanted to do a different action.

=end