# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent 2 hours on this challenge.

# 0. Pseudocode

# Input: a new object with sides = n
# This new object should be able to .roll which returns a random number from 1 to 6.
# Output: .sides which returns n and .roll which returns a random number 1 thru n.
# Steps:
#   1. Create a class called die with class variable sides, make sure sides is not less than 1
#   2. Create a .sides method which returns the number of sides inputted
#   3. Create a .roll method which returns a random number, 1 thru n sides


# 1. Initial Solution

class Die

  def initialize(sides)
    if sides < 1
      raise ArgumentError.new("Sides must be at least 1!")
      end
    @sides = sides
  end

  def sides
    return @sides
  end

  def roll
    return 1 + rand(@sides)
  end

end

p die = Die.new(5)

p die.sides

p die.roll

# 3. Refactored Solution

class Die
  def initialize(sides)
      if sides < 1
        raise ArgumentError.new("Sides must be at least 1!")
      end
    @sides = sides
  end
  def sides
    @sides
  end
  def roll
    1 + rand(@sides)
  end
end

p die = Die.new(5)
p die.sides
p die.roll







# 4. Reflection
=begin
What is an ArgumentError and why would you use one?
An ArgumentError is a way to raise an error when a certain input occurs or is passed through.  You would use one to tell the user what you are looking for in terms of boundaries or objects.
What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
I implemented rand(variable) to create a random number between 0 and the variable given.  Also, I raise ArgumentError to tell the user what are the parameters of the variable I am looking for.  I was successful with both, and they did not present many challenges.
What is a Ruby class?
A Ruby class is a blueprint for an object.  Object is one instance of class, string is also.
Why would you use a Ruby class?
A Ruby class provides methods to all objects within that class.  A Ruby class can also contain class variables which can be pulled from objects that are listed as that class.  Also, they can contain instance variables which each object in that class contains its own copy of.
What is the difference between a local variable and an instance variable?
A local variable exists only within the method.  Once outside of the method, it no longer exists.  An instance variable exists within a Class, and each object of that class has its own copy of the variable.
Where can an instance variable be used?
An instance variable can be used in defining a Class, and later on as well when you are manipulating the object that is within that class.  It has its own copy of the instance variable.

=end