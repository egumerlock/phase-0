# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]
number_array.map! do |element|
  if element.kind_of?(Array)
    element.map! {|inner| inner + 5}
  else
    element + 5
  end
end

p number_array


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
startup_names.map! do |element|
  if element.kind_of?(Array)
    element.map! {|inner| (inner.is_a? Array)? inner.map! {|item| item + "ly"} : inner + "ly"}
  else
    element + "ly"
  end
end

p startup_names

# Refactoring:

refactor_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

refactor_names[1][2].map! {|item| item = item + "ly"}

refactor_names[1].map! {|item| (item.is_a? Array) ? item : item + 'ly' }

refactor_names.map! {|item| (item.is_a? Array) ? item : item + 'ly' }

p refactor_names

#Reflection
=begin
What are some general rules you can apply to nested arrays?
  Accessing nested arrays are generally the same, begin from the outside into the elements you are targeting.  Also, you can apply if statements, blocks, and .each method.
What are some ways you can iterate over nested arrays?
  .each with an incorporated if statement, or .map! with clauses that check if the element is editable or if it is an array itself.
Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
  We could not find any new methods to implement for nested arrays, and we just used ones that we were familiar with.  I did learn .kind_of?() method but it seems very similar to the .is_a? which I already knew before.  Mapping was the only way we could figure out to destructively modify the contents, although I am sure there are more methods we could have used.
=end