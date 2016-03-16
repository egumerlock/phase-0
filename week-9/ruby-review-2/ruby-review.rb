# I worked on this challenge by myself.
# This challenge took me .25 hours.


# Pseudocode
# Input: an array of numbers
# Output: a modified array with strings
# Steps:
# 1. Create an array of numbers
# 2. Change each element in the array with an iterator, if it is divisible by 3 and not 15 then element will be "Fizz"
# 3. If it is divisible by 5 and not 15 then element will be "Buzz"
# 4. If it is divisible by 15 then element will be "FizzBuzz"
# 5. Else it element will be itself.
# 6. Do it destructively, return array


# Initial Solution
array = [1, 2, 3, 5, 15, 30]

def super_fizzbuzz(array)
  array.map! {|e|
    if e % 3 == 0 && e % 15 != 0
      e = "Fizz"
    elsif e % 5 == 0 && e % 15 != 0
      e = "Buzz"
    elsif e % 15 == 0
      e = "FizzBuzz"
    else
      e = e
    end
}

end

p super_fizzbuzz(array)



# Refactored Solution
array = [1, 2, 3, 5, 15, 30]

def super_fizzbuzz(array)
  array.map! {|e|
    if e % 3 == 0 && e % 15 != 0
      e = "Fizz"
    elsif e % 5 == 0 && e % 15 != 0
      e = "Buzz"
    elsif e % 15 == 0
      e = "FizzBuzz"
    else
      e = e
    end
}

end

p super_fizzbuzz(array)






# Reflection
=begin
What concepts did you review in this challenge?
I reviewed mapping an array.
What is still confusing to you about Ruby?
Nothing in this exercise was very confusing.  Maybe just constructing the .map! block but thats because Javascript syntax has been getting into my Ruby.

What are you going to study to get more prepared for Phase 1?
I am planning on studying all of the review modules.

=end