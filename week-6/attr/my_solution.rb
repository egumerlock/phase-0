#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input: a new Greetings object, as well as calling .hello
# Output: A puts statement with the name accessed through a .name method, created by attr_accessor :name
# Steps:
# 1. Create a class NameData that initializes a variable @name with my name
# 2. Create a class Greetings that initializes a variable @namedata with a new instance of NameData
# 3. Create a method within Greetings hello which puts a statement with the @namedata.name method

class NameData
  attr_accessor :name
  def initialize
    @name = "Eric"
  end
end

class Greetings
  def initialize
    @namedata = NameData.new
  end

  def hello
    puts "Hello #{@namedata.name}! How wonderful to see you today."
  end
end

greet = Greetings.new
greet.hello

# Reflection
=begin
   Release 1:
   What are these methods doing?
   These methods are running, and then returning the values they get at the end of running. They are not really doing much, just grabbing the instance variable and returning its value.
   How are they modifying or returning the value of instance variables?
   The .change_my methods are modifying the value of the instance variables, and then they are returned when all the information is printed.

   Release 2:
   What changed between the last release and this release?
   attr_reader :age was added at the top of the class, allowing for the method instance.age to be called later on.  This made what_is_age to no longer be needed.
   What was replaced?
   attr_reader :age replaced the method what_is_age to define a method that calls the variable @age and reads it.
   Is this code simpler than the last?
   Yes, simpler to read at this point too.

   Release 3:
   What changed between the last release and this release?
   attr_writer :age was added at the top, allowing age to be set later outside of the class with instance.age = 28.
   What was replaced?
   The method change_my_age was removed, because age is now able to be changed using instance.age = due to attr_writer :age within the class.
   Is this code simpler than the last?
   Yes, much simpler.

   Release 4:
   Refactored Release 4 File.

   Release 5:
   Wrote new code in Release 5 File.

   Release 6:
   What is a reader method?
   A reader method is a method that can print the value of an instance variable, even outside of the class.  This method is set by writing attr_reader :symbol at the top of the class, with the symbol corresponding to the instance variable you initialize.
   What is a writer method?
   A reader method is a method that can write the value of an instance variable, even outside of the class.  This method is set by writing attr_writer :symbol at the top of the class, with the symbol corresponding to the instance variable you initialize.
   What do the attr methods do for you?
   The attr methods create methods for reading or writing instance variables, or both.  They are easily accessed by whatever you name the attr method, so long as they correspond with the @instance_variable.  att_accessor
   Should you always use an accessor to cover your bases? Why or why not?
   No, if you know that you will only be reading the variable and not changing its value, it is safter to use attr_reader.  Likewise, if you only want to write over it but don't need its value, its safter to use attr_writer.
   What is confusing to you about these methods?
   The methods are straightforward, but it is the use of these methods that can get a little complicated.  For example, in the last release, it was a little confusing that we were initializing another class through a class, but it made sense in the end.

=end