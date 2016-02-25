# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with Brittney Braxton.
# I spent 2 hours on this challenge.

# Pseudocode

# Input: Get 16 digit number
# Output: Check whether it's true or false that the 16-digit numbr is a valid credit card number
# Steps:
#   First split each digit into its own element (array)
#   Start with the first digit, double it. And double every other digit from that.
#   Push double digits into a new array.
#   Push all the digits we didn't double into the same new array.
#   Add all the elements together, splitting up digits when number has two digits.
#   Take the total of that array and use % 10 to check if it equals 0.
#   If its 0, then the credit card is valid. If it is not 0, then the credit card is invalid.


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard
#   def initialize(card)
#     if card.to_s.length != 16
#       raise ArgumentError.new("Please enter a 16 digit credit card")
#     else
#     @card = card
#     @card_digits = []
#     @sum = 0

#     end
#   end

#   def double_digit
#     @new_array = []

#     @card_digits=@card.to_i.to_s.split("")

#     @card_digits.each_with_index do |element, index|
#       if index.even?
#         @new_array << (element.to_i * 2)
#       else
#         @new_array << element.to_i
#       end
#     end
#   end

#   def sum
#     @new_array.map! do |element|
#       if element.to_s.length > 1
#         element.to_s.split("")
#       else
#         element.to_s
#       end
#     end
#     @new_array = @new_array.flatten
#     @new_array.map! do |element|
#      element.to_i
#     end
#     @sum = @new_array.inject(:+)
#   end

#   def valid
#     if @sum % 10 == 0
#       true
#     else
#       false
#     end
#   end

#   def check_card
#     double_digit
#     sum
#     valid
#   end

# end

# card = CreditCard.new(4563960122001999)

# p card.check_card

# Refactored Solution
class CreditCard
  def initialize(card)
    if card.to_s.length != 16
      raise ArgumentError.new("Please enter a 16 digit credit card")
    else
    @card = card
    @card_digits = []
    @sum_of_digits = 0
    @calculating_array = []
    end
  end

  def double_digit
    @card_digits=@card.to_s.split("")

    @card_digits.each_with_index do |element, index|
      if index.even?
        @calculating_array << (element.to_i * 2)
      else
        @calculating_array << element.to_i
      end
    end
  end

  def sum
    @calculating_array.map! do |element|
      if element.to_s.length > 1
        element.to_s.split("")
      else
        element.to_s
      end
    end
    @calculating_array = @calculating_array.flatten
    @calculating_array.map! do |element|
      element.to_i
    end
    @sum_of_digits = @calculating_array.inject(:+)
  end

  def valid
    if @sum_of_digits % 10 == 0
      true
    else
      false
    end
  end

  def check_card
    double_digit
    sum
    valid
  end

end

card = CreditCard.new(4563960122001999)

p card.check_card







# Reflection
=begin
What was the most difficult part of this challenge for you and your pair?
The most difficult part was getting our code started.  We tried to split the steps into different methods from the start, but we were not familiar enough with instance variables and using methods within other methods.  They are called differently, simply by the name of the method which we figured out later.  Once we started writing code, the rest flowed naturally.
What new methods did you find to help you when you refactored?
We found .inject(:+) which conviniently adds all the elements of an array up into one sum total.
What concepts or learnings were you able to solidify in this challenge?
We solidified using methods within other methods in a class, which troubled us for awhile.  Also, we solidified the manipulation of array elements with iterations.
=end