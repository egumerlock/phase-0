
 // JavaScript Olympics

// I paired with Brad Lindgren on this challenge.

// This challenge took me 2 hours.

// Bulk Up
// Pseudocode
// Take each subarray and add a win property
// Code the win property to print a statement
// Warm Up

var Jordan = {
       name: "Michael Jordan",
       event: "Championship 96"
       };

var James = {
       name: "LeBron James",
       event: "Eastern Conference"
       };

var Manning = {
       name : "Peyton Manning",
       event: "Superbowl"
       };

function athletes(array){
  for (var i = 0; i < array.length; i++) {
     array[i].win = console.log(array[i].name + " won the " + array[i].event)
  };
};

var group = [Jordan, James, Manning];

athletes(group)



// Jumble your words
// Take a string as input
// Split the string by character - receive new array
// Reverse the array
// Join all the characters
// Print new string

function reverse_string(str) {
  var new_array = str.split("");
  new_array.reverse();
  var joined_str = new_array.join('');
  console.log(joined_str);
};

reverse_string("!sdrow ruoy elbmuJ")

// 2,4,6,8
// Pseudocode
// Input: array of numbers
// Output: Even numbers
// Steps: create a new array
// Iterate over elements of original array and push even elements into new array
// Return the array

var numbers = [1, 2, 3, 4, 5, 6];

function evens(numbers_array) {
  var evens_array = [];
  var length = numbers_array.length;
  for (var i = 0; i < length; i++) {
      if ( numbers_array[i] % 2 == 0)
          evens_array.push(numbers_array[i]);
  };
  console.log(evens_array)
};

evens(numbers)

// "We built this city"

function Athlete(name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
};

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")

console.log(michaelPhelps.constructor === Athlete)

console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection
/*
What JavaScript knowledge did you solidify in this challenge?
We solidifed knowledge of using the for iterator in Javascript as well as some Javascript methods and iterating over arrays.
What are constructor functions?
The constructor functions are sort of like Ruby classes in that we are able to create a new Object with certain properties from one line using the new command.  This simplifies constructing a number of objects, especially if they will have the same properties with different values.
How are constructors different from Ruby classes (in your research)?
A constructor is a function whereas a Ruby class is itself an object.  The function is run when called upon with new, but the function itself is not an object.  A Ruby class can be a set of functions or methods and itself have multiple instance variables, all in all, a larger entity than simply a function.
*/