# Build a simple guessing game


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: an integer, answer
# Output: For .solved, true or false if the guess was correct or not.  For .guess, return a symbol for low, high, or correct if lower, higher, or right on the money.
# Steps:
# 1. Initialize the variable answer, raise error if it is not an integer.
# 2. Create method .guess, which will compare the guess integer to the answer variable.  If high, return symbol high, if low, return symbol low, if correct, return correct.
# 3. Create method .solved? to return true or false based on whether the guess equals the answer.

# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @solved = false
    if answer.is_a?(Integer) == false
      raise ArgumentError.new("Please input an integer")
    end
  end

  def guess(guess)
    if guess.to_i > @answer
      @solved = false
      return :high
    elsif guess.to_i < @answer
      @solved = false
      return :low
    else guess.to_i == @answer
      @solved = true
      return :correct
    end
  end

  def solved?
    @solved
  end

end

game = GuessingGame.new(10)

p game.guess(5)
p game.guess(20)
p game.guess(10)
p game.solved?

# Refactored Solution
class GuessingGame
  def initialize(answer)
    @answer = answer
    @solved = false
    raise ArgumentError.new("Please input an Integer.") if answer.is_a?(Integer) == false
  end

  def guess(guess)
    if guess.to_i > @answer
      @solved = false
      :high
    elsif guess.to_i < @answer
      @solved = false
      :low
    else guess.to_i == @answer
      @solved = true
      :correct
    end
  end

  def solved?
    @solved
  end
end




# Reflection
=begin
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
  Instance variables have the characteristics of a real-world object in that they are always there to modify or to pull from.  A real world object like instance variables would be a box, you have something written on the box, but inside can be anything you assign it to.  A method can also be called anywhere, once you have created the new object.  It is like a real-world recipe, or set of actions set upon something.
When should you use instance variables? What do they do for you?
  Instance variables are very useful to keep a consistent variable throughout a bunch of methods within a class.  They can store information, like results of a method, or bring you information, in comparisons to new variables.  They do many things, but they really keep things consistent throughout a class, even in the different worlds of different methods.
Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
  Flow control allows us to select different outcomes depending on the inputs.  We can funnel different possibilities into different outcomes, and in this way, we control the flow of inputs.  I had a little trouble in changing the @solved variable and returning something at the same time.  I wanted both to happen, but if you change a variable after returning something, the end value that is returned is the variable, not what you specified to return.  This will take some getting used to.
Why do you think this code requires you to return symbols? What are the benefits of using symbols?
  I think symbols are able to pass information slightly easier than strings.  If we were to use the symbols in other methods or chain more actions, I think it is easier to use symbols rather than strings.  Also, they are more quickly computed than strings.  If we tried to run these methods millions of times, the symbols would do it quicker.  That is all I have for the moment, but I will research more on this subject.
=end