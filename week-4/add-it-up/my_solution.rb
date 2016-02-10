# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge Andy Crowley.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: Array
# Output: a number, total of the array
# Steps to solve the problem.
    #1. Add all array numbers up
    #2. Return sum of all numbers

# 1. total initial solution
def total array
  array.inject(0){|sum,x| sum + x }
end


# 3. total refactored solution
def total array
  array.reduce(0, :+)
end



# 4. sentence_maker pseudocode
#
# make sure all pseudocode is commented out!
# Input: Array of strings
# Output: complete sentence with capitalization and period
# Steps to solve the problem.
  # 1. Define the method
  # 2. Add all string together.
  # 3. Capitalize letter and add period.


# 5. sentence_maker initial solution
def sentence_maker array
  array = array.join(' ').capitalize
  return "#{array}."
end


# 6. sentence_maker refactored solution
def sentence_maker array
  array = array.join(' ').capitalize << "."

end
