
# Pad an Array

# I worked on this challenge with Chunyu Ou.

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# An array, a minimum size which is an integer, a pad value with default nil.
# What is the output? (i.e. What should the code return?)
# An array of elements with a minimum size and default values.
# What are the steps needed to solve the problem?
# 1. Make sure array is bigger than min_size
# 2. Change original array elements with value (default value nil)


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  min_size.times do |i|
    if array[i] = true
      next
    else
      array[i] = value
    end
  end
  array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = array.dup
  min_size.times do |i|
    if new_array[i] = true
      next
    else
      new_array[i] = value
    end
  end
  new_array
end


# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  x = min_size - array.size
  x.times do |i|
    array << value
  end
  array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = array.dup
  x = min_size - new_array.size
  x.times do |i|
    new_array << value
  end
  new_array
end


# 4. Reflection
=begin
Were you successful in breaking the problem down into small steps?
Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
When you refactored, did you find any existing methods in Ruby to clean up your code?
How readable is your solution? Did you and your pair choose descriptive variable names?
What is the difference between destructive and non-destructive methods in your own words?
=end