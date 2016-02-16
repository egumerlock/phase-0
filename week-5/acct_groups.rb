=begin
Pseudocode:
  I want to sort a list of names into an accountability group of 4 or 5, with groups of at least 3.
  Input: List of names
  Output: Arrays of groups of 4 or 5, with the least possible being 3
  Steps:
    1. Make a large array of all names
    2. Randomly shuffle them
    3. Push names into groups of 4 or 5, depending on the divisibility of the group
    4. Make sure none of them are smaller than 3


=end
# Initial Solution
names = ["Adam Pinsky", "Afaan Naqvi", "Alana Farkas", "Andrew Crowley", "Andrew Vathanakamsang", "Anna Lansfjord", "Blair White", "Brad Lindgren", "Brian Donahue", "Brittney Braxton", "Camila Crawford", "Charlie Lee", "Chunyu Ou", "Daniel Homer", "Daniel Shapiro", "David Kaiser", "David Ramirez", "Daniel Deutsch", "Emily Osowski", "Emmet Garber", "Eric Gumerlock", "Greg Toprak", "Hanna Taylor", "Dave Hostios", "Jack Baginski", "Jaclyn Feminella", "Jasmeet Chatrath", "Jason Allen", "Jon Norstrom", "jonathan nicolas", "Joseph Yoo", "Joshua Lugo", "Joshua Wu", "Julia Giraldi", "Kari Giberson", "Katherine Broner", "Kevin Fowle", "Kevin Niu", "Kevin Perkins", "Leo Kukhar", "Li-Lian Ku", "Erica Lloyd", "Marita Deery", "Michael Verthein", "Milorad Felbapov", "Brian Mosley", "Nick Russo", "Noah Schutte", "Oscar Delgadillo", "Ryan Dempsey", "Ryan Wilkins", "Sami Zhang", "Sean Norton", "Shyh Hwang", "Sydney Rossman-Reich", "Theo Paul", "Tomasz Sok", "Wesley El-Amin"]

def accountability_groups(names)
  names = names.shuffle

  if names.size % 4 == 0
    new_array = names.each_slice(4).to_a
    puts "#{new_array} #{new_array.size}"
  elsif names.size % 5 == 0
    new_array = names.each_slice(5).to_a
    puts "#{new_array} #{new_array.size}"
  else
    new_array = names.each_slice(4).to_a
    if new_array.last.length > 2
      puts "#{new_array} #{new_array.size}"
    else
      removal_index = -2
      until new_array.last.length > 2
      new_array.last.push(new_array[removal_index].pop)
      removal_index -= 1
      end
      puts "#{new_array} #{new_array.size}"
    end

  end

end

accountability_groups(names)

# Refactored Solution
names = ["Adam Pinsky", "Afaan Naqvi", "Alana Farkas", "Andrew Crowley", "Andrew Vathanakamsang", "Anna Lansfjord", "Blair White", "Brad Lindgren", "Brian Donahue", "Brittney Braxton", "Camila Crawford", "Charlie Lee", "Chunyu Ou", "Daniel Homer", "Daniel Shapiro", "David Kaiser", "David Ramirez", "Daniel Deutsch", "Emily Osowski", "Emmet Garber", "Eric Gumerlock", "Greg Toprak", "Hanna Taylor", "Dave Hostios", "Jack Baginski", "Jaclyn Feminella", "Jasmeet Chatrath", "Jason Allen", "Jon Norstrom", "jonathan nicolas", "Joseph Yoo", "Joshua Lugo", "Joshua Wu", "Julia Giraldi", "Kari Giberson", "Katherine Broner", "Kevin Fowle", "Kevin Niu", "Kevin Perkins", "Leo Kukhar", "Li-Lian Ku", "Erica Lloyd", "Marita Deery", "Michael Verthein", "Milorad Felbapov", "Brian Mosley", "Nick Russo", "Noah Schutte", "Oscar Delgadillo", "Ryan Dempsey", "Ryan Wilkins", "Sami Zhang", "Sean Norton", "Shyh Hwang", "Sydney Rossman-Reich", "Theo Paul", "Tomasz Sok", "Wesley El-Amin"]

def accountability_groups(names)
  names = names.shuffle
  if names.size % 5 == 0
    new_array = names.each_slice(5).to_a
    puts "#{new_array} #{new_array.size}"
  else
    new_array = names.each_slice(4).to_a
    if new_array.last.length > 2
      puts "#{new_array} #{new_array.size}"
    else
      removal_index = -2
      until new_array.last.length > 2
      new_array.last.push(new_array[removal_index].pop)
      removal_index -= 1
      end
      puts "#{new_array} #{new_array.size}"
    end
  end
end

accountability_groups(names)

# Assisted by Andrew Larson in Office Hours 2/16/2016

=begin
What was the most interesting and most difficult part of this challenge?
The most interesting part of the challenge and the most difficult was trying to solve how to make the remainder group big enough (at least 3), while keeping all other groups over the bottom limit of 3 as well.
Do you feel you are improving in your ability to write pseudocode and break the problem down?
I am improving somewhat, but at this point it seems that my ability to break down the problem is far greater than my knowledge of Ruby, which means that I have to learn more Ruby before breaking down the problem is really effective for me.
Was your approach for automating this task a good solution? What could have made it even better?
I think this was a good solution, I could have made it a little better if I really wanted to have groups of 3,4, and 5, but groups of 3 and 4 seems sufficient.
What data structure did you decide to store the accountability groups in and why?
I decided to store them in subarrays within a big array.  I could have stored them in a Hash, but that was perhaps overcomplicating a little bit?  I think the array worked out for my purpose.
What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
I didn't learn any new Ruby methods, but I clarified one, namely new_array[-2].pop which pops the last element of the second to last subarray, NOT the entire subarray, which I thought it was going to do in the outset.


=end