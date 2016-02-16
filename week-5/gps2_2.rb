# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # 1. Split the string into different elements into Hash
  # 2. Set default quantity = 1
  # 3. Print the list to the console, yes we could use our print method
# output: Hash

# Method to add an item to a list
# input: item name and optional quantity
# steps: 1. prompt an item name,
#        2. prompt a quantity
#        3. save it to the hash
# output: You have added xx to your grocery list.

# Method to remove an item from the list
# input: item name
# steps: 1. prompt an item name
#        2. delete from the hash, including the value
# output: You have successfully deleted xx.

# Method to update the quantity of an item
# input: item name, new quantity
# steps: 1. prompt the item name
#        2. rewrite the value
# output: You have successfully updated the quantity of xx.

# Method to print a list and make it look pretty
# input: print command
# steps: 1. Print the current hash in a nice display
# output: The Hash

# Initial Solution
=begin

def new_list (string, value=1)
  keys = string.split(' ')
  grocery_list = Hash.new(1)
  keys.each do |k|
    grocery_list[k] = value
    puts "#{k}: #{grocery_list[k]}"
  end
return grocery_list
end

grocery_list = new_list("juice carrots kale oranges")

puts "What would you like to do? add remove update or print"
answer = gets.chomp


def add(grocery_list)
  puts "What is the item you would like to add?"
  item = gets.chomp
  puts "How many would you like to buy?"
  value = gets.chomp
  grocery_list[item] = value
  puts "You have successfully added #{value} #{item}."
  return grocery_list
end

def remove(grocery_list)
  puts "What would you like to remove?"
  item = gets.chomp
  if grocery_list[item] = nil
    puts "Item doesn't exist!"
  else
    grocery_list.delete(item)
    puts "You have successfully removed #{item}"
  end

end

def update(grocery_list)
  puts "Which item would you like to update?"
  item = gets.chomp
  if grocery_list[item] = nil
    puts "Item doesn't exist!"
  else
    puts "What should the new quantity be?"
    value = gets.chomp
    grocery_list[item] = value
    puts "You have successfully updated #{item} quantity to #{value}"
  end
end

def print(grocery_list)
  puts "Here is your grocery list:"
  grocery_list.each do |item, value|
    puts "#{item}: qty #{value}"
  end
end

case answer
when "add"
  add(grocery_list)
when "remove"
  remove(grocery_list)
when "update"
  update(grocery_list)
when "print"
  print(grocery_list)
else
  puts "Sorry, that is not a valid command!!"
end

=end

# Refactored Solution


def new_list (string, value=1)
  keys = string.split(' ')
  grocery_list = Hash.new(1)
  keys.each do |k|
    grocery_list[k] = value
    puts "#{k}: qty #{grocery_list[k]}"
  end
  grocery_list
end

grocery_list = new_list("juice carrots kale oranges")


def add(grocery_list)
  puts "What is the item you would like to add?"
  item = gets.chomp
  puts "How many would you like to buy?"
  value = gets.chomp
  grocery_list[item.to_s] = value.to_i
  puts "You have successfully added #{value} #{item}."
  grocery_list
end

def remove(grocery_list)
  puts "What would you like to remove?"
  item = gets.chomp
  if grocery_list[item].nil?
    puts "Item doesn't exist!"
  else
    grocery_list.delete(item)
    puts "You have successfully removed #{item}."
  end
end

def update(grocery_list)
  puts "Which item would you like to update?"
  item = gets.chomp
  if grocery_list[item].nil?
    puts "Item doesn't exist!"
  else
    puts "What should the new quantity be?"
    value = gets.chomp
    grocery_list[item] = value
    puts "You have successfully updated #{item} quantity to #{value}."
  end
end

def print(grocery_list)
  puts "Here is your new grocery list:"
  grocery_list.each {|item, value| puts "#{item}: qty #{value}"}
end

puts "What would you like to do? add remove update or print"
answer = gets.chomp

case answer
when "add"
  add(grocery_list)
  print(grocery_list)
when "remove"
  remove(grocery_list)
  print(grocery_list)
when "update"
  update(grocery_list)
  print(grocery_list)
when "print"
  print(grocery_list)
else
  puts "Sorry, that is not a valid command!!"
end


=begin

What did you learn about pseudocode from working on this challenge?
Pseudocoding is a necessary step in solving your problem with whatever programming language.  It lays out what inputs and outputs you should be expecting from each method you are defining.  Also, it gives you a layout on how many methods you would like to create, and what the purpose of each is.  Mentally, this is a step you cannot skip.  Once you start coding, the bigger picture fades away into the details, and so it is great to have pseudocode to look back at for reference.

What are the tradeoffs of using Arrays and Hashes for this challenge?
With an array, you would have to save each piece of data as one string, which would make updating the quantity quite difficult.  Using a hash, you have to worry about where the key and values fit into to your methods, and are just slightly more manipulate in general (can't push, etc.).

What does a method return?
A method returns the last line, unless specified to return something else.

What kind of things can you pass into methods as arguments?
You can pass almost anything into a method as an argument, so long as it fits the actions the method takes on that argument.  An argument can be an array, a hash, a number, a string, a symbol, etc.

How can you pass information between methods?
By calling a previously defined method, we can pass information from one method to the other.  For variables, you have to pull it out of another method to make it a global variable.

What concepts were solidified in this challenge, and what concepts are still confusing?
Using methods and connecting them were solidified, however, hashes are still quite confusing as they accept fewer commands than arrays.  Also, how to pull a variable out from being just a local variable to a global variable was not explained very well at all by my guide.


=end
