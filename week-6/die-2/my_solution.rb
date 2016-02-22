
# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: an array of strings, each a letter corresponding to a side of a die
# Output: .sides returns the number of sides of the die
# => .roll returns one of the sides randomly
# Steps:
# 1. Create a method sides that takes an array and counts the number of elements in the array, returning the number of sides
# 2. Create a method roll that takes an array
# 3. Assign each element a number
# 4. Randomly select a number
# 5. Return a letter corresponding to the number
#
# Initial Solution

class Die
  def initialize(labels)
    @labels = labels
    if labels.size < 1
      raise ArgumentError.new("Please put at least one letter of the alphabet")
    end
  end

  def sides
    @labels.length
  end

  def roll
    @labels.sample
  end
end

p die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])

p die.roll

# Refactored Solution

class Die
  def initialize(labels)
    @labels = labels
    raise ArgumentError.new("Please put at least one letter of the alphabet") if labels.size < 1
  end

  def sides
    @labels.length
  end

  def roll
    @labels.sample
  end
end

p die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])

p die.roll






# Reflection
=begin
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
The main difference between this die class and the last one was to initialize the instance variable @labels before writing the methods sides and roll.  Also, using .sample instead of rand() to write the roll method was different.  There was not much of a logic change here.
What does this exercise teach you about making code that is easily changeable or modifiable?
It teaches me that there are many ways to make interchangable code, and if it is refactored neatly, it is very easy to go back and check past work on how to make new Ruby methods.
What new methods did you learn when working on this challenge, if any?
I found the .sample method, which was very useful for grabbing a letter from an array.
What concepts about classes were you able to solidify in this challenge?
I was able to solidify declaring the instance variables in this challenge.


=end