# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
# Mission: Check if a number is part of the Fibonacci sequence
# Input: A number
# Output: True or False depending on whether or not it is part of the Fibonacci sequence
# Steps:
#  1. Create a Fibonacci sequence method
#  2. Write an if statement that checks to see if the input number is contained within the Fibonacci sequence.
#  3. Make sure return true or false


# Initial Solution
def fibonacci(n)
    a = 0
    b = 1

    # Compute Fibonacci number in the desired position.
    n.times do
    temp = a
    a = b
    # Add up previous two numbers in sequence.
    b = temp + b
    end

    return a
end

$fibonacci_array = []
def create_fibonacci_array(nth_term)
  nth_term.times do |n|
    $fibonacci_array << fibonacci(n)
  end
  puts $fibonacci_array
end


def is_fibonacci?(num)
  if $fibonacci_array.include?(num)
    return true
  else
    return false
  end

end

create_fibonacci_array(15)
p is_fibonacci?(233)
p is_fibonacci?(232)

# Refactored Solution
def fibonacci(n)
    a = 0
    b = 1
    n.times do
      temp = a
      a = b
      b = temp + b
    end
    a
end

$fibonacci_array = []

def create_fibonacci_array(nth_term)
  nth_term.times do |n|
    $fibonacci_array << fibonacci(n)
  end
  puts $fibonacci_array
end


def is_fibonacci?(num)
  if $fibonacci_array.include?(num)
    true
  else
    false
  end

end

create_fibonacci_array(15)
p is_fibonacci?(233)
p is_fibonacci?(232)



# Reflection
=begin
Creating the Fibonacci sequence was the toughest part, but it worked with a n.times loop to find the nth term.  Creating the array was a simple iteration of the first method.  Checking to see if the given input number was in that array was the simplest part.


=end