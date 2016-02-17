# Calculate the mode Pairing Challenge
# I worked on this challenge with Greg Toprak.
# I spent [] hours on this challenge.
# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.
# 0. Pseudocode
# What is the input?
# -> Array of numbers or strings
# What is the output? (i.e. What should the code return?)
# -> array of most common element, or elements if more than one
# What are the steps needed to solve the problem?
# 1: make a hash
# 2: iterate over the array
# 3: IF element is not in hash keys
# 4:    then make it a key, with value one
# 5: ELSE
# 6:    increment the associated value by one
# 7: sort by value
# 8: RETURN all highest values
# 1. Initial Solution
=begin
def mode(arr)
    freqs = arr.group_by {|freq| freq}
    sorted_freqs = freqs.sort_by {|k,v| v.size}.reverse
    sorted_freqs.each do |a|
        most_freq = sorted_freqs.pop
        highest_freq = most_freq[1].length
    end
    return highest_freq
end
=end

# def mode(arr)
#     # make the output array
#     most_frequent = []
# ​
#     # sets up the frequency hash
#     freqs = Hash.new(0)
#     arr.each { |item| freqs[item] += 1 }
# ​
#     # gets the highest amount possible
#     high_amount = 0
#     freqs.each do |k,v|
#         if v > high_amount
#             high_amount = v
#         end
#     end
# ​
#     # checks each element for that amount
#     freqs.each do |k,v|
#         if v == high_amount
#             most_frequent.push(k)
#         end
#     end
# ​
#     return most_frequent
# end


# 3. Refactored Solution

def mode(arr)
    # sets up the frequency hash
    freqs = Hash.new(0)
    arr.each { |item| freqs[item] += 1 }
    # gets the highest amount possible
    high_amount = freqs.sort_by {|k,v| v}.first
    # checks each element for that amount
    freqs.select { |k,v| v == high_amount}.keys
end


# 4. Reflection
=begin
Which data structure did you and your pair decide to implement and why?
We decided to implement a hash as it is perfect for calculating the frequency of items that occur in an array, and saving that value as the value in the hash.
Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
Yes, the pseudocode for this one seemed to be the easy part of the challenge.  What was more difficult was implementing each step we laid out in the pseudocode.
What issues/successes did you run into when translating your pseudocode to code?
We ran into some confusion as to whether or not we needed an array variable, like in the initial solution, to return the correct values in an array format, or whether we could use a method, like .select to return the values in an array without an extra variable.  Sorting was also difficult because we at first had an array we needed to push into, and pushing maximum values of the same value was troubling.  But we solved and refactored well I think.
What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
We used .each first, then we used .sort_by to iterate through the hash, and then we used .select to create the end return array.  We found a method called .group_by which at first seemed useful, and probably we could have used it, but we couldn't figure out a way to manipulate the hash to display frequency versus a bunch of values.  If I have time I would like to try to implement .group_by, but at this point it was too difficult for us.
=end