puts "Hello there, and what's your name?"
name = gets.chomp
puts "Your name is " + name + "? What a lovely name!"
puts "Pleased to meet you, " + name + ". :)"

puts "What is your favorite number?"
favnum = gets.chomp
newnum = favnum.to_i + 1
puts "Well, " + newnum.to_s + " is a much bigger, better number."