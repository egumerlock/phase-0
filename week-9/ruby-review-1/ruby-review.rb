# Numbers to English Words


# I worked on this challenge with Chunyu Ou.
# This challenge took me 1.5 hours.


# Pseudocode
# Input: a number
# Output: a string of the number in English
# Steps:
# 1. Create hashes of each digit place: ones, tens, hundreds, thousands
# 2. Split the number into an array
# 3. For each digit place check the corresponding array to see if the number matches a value, if so puts that key (string)
# 4. Repeat for each digit place


# Initial Solution
def to_english (num)
ones = {
  "one": 1,
  "two": 2,
  "three": 3,
  "four": 4,
  "five": 5,
  "six": 6,
  "seven": 7,
  "eight": 8,
  "nine": 9,
  "ten": 10,
  "eleven": 11,
  "twelve": 12,
  "thirteen": 13,
  "fourteen": 14,
  "fifteen": 15,
  "sixteen": 16,
  "seventeen": 17,
  "eighteen": 18,
  "nineteen": 19
  }

tens = {
  "twenty": 2,
  "thirty": 3,
  "fourty": 4,
  "fifty": 5,
  "sixty": 6,
  "seventy": 7,
  "eighty": 8,
  "ninety": 9
  }

hundreds = {
  "one hundred": 1,
  "two hundred": 2,
  "three hundred": 3,
  "four hundred": 4,
  "five hundred": 5,
  "six hundred": 6,
  "seven hundred": 7,
  "eight hundred": 8,
  "nine hundred": 9
  }

thousands = {
  "one thousand": 1,
  "two thousand": 2,
  "three thosand": 3,
  "four thousand": 4,
  "five thousand": 5,
  "six thousand": 6,
  "seven thousand": 7,
  "eight thousand": 8,
  "nine thousand": 9
  }




  # array = num.split("")
  if num == 0
    puts "zero"
  elsif num < 20
    ones.each do |k,v|
      if ones[k] == num
         puts k
      end
    end
  elsif num < 100
    array = num.to_s.split("")
    puts tens.key(array[0].to_i).to_s + " " + ones.key(array[1].to_i).to_s

  elsif num < 1000
    array = num.to_s.split("")
    first_two_digits = array[1] + array[2]

    if first_two_digits.to_i < 20
      puts hundreds.key(array[0].to_i).to_s + " and " +     ones.key(first_two_digits.to_i).to_s
    else
      puts hundreds.key(array[0].to_i).to_s + " and " + tens.key(array[1].to_i).to_s + " " + ones.key(array[2].to_i).to_s
    end
  elsif num <10000
    array = num.to_s.split("")
    first_two_digits = array[2] + array[3]

    if first_two_digits.to_i < 20
      puts thousands.key(array[0].to_i).to_s + " " + hundreds.key(array[1].to_i).to_s + " and " + ones.key(first_two_digits.to_i).to_s
    else
      puts thousands.key(array[0].to_i).to_s + " " + hundreds.key(array[1].to_i).to_s + " and "  + tens.key(array[2].to_i).to_s + " " + ones.key(array[3].to_i).to_s
    end
  end
end

to_english(4185)

# Refactored Solution
# Couldn't think of a way to refactor





# Reflection
=begin
What concepts did you review in this challenge?
I reviewed splitting a number into digits using an array, and then if else statements based on the matches with the hash values.
What is still confusing to you about Ruby?
Ruby variables are still quite a bit more confusing than Javascript.  For example, we had to put the hashes within the method, or else Ruby would not recognize the variables.  We could have used instance variables to resemble something close to a Javascript variable, which is accessable from all functions.  I don't understand why a variable defined outside of a method is not global, it just does not seem to fit.
What are you going to study to get more prepared for Phase 1?
I am going to try to go through the rest of the Ruby Reviews.

=end