var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]




// __________________________________________
// Write your code below.
// Release 1
var gradebook = {};

// Release 2
gradebook.Joseph = {};
gradebook.Susan = {};
gradebook.William = {};
gradebook.Elizabeth = {};



// Release 3
gradebook.Joseph.testScores = scores[0];
gradebook.Susan.testScores = scores[1];
gradebook.William.testScores = scores[2];
gradebook.Elizabeth.testScores = scores[3];

// Release 4
gradebook.addScore = function (name, score) {
  gradebook[name]["testScores"].push(score);
};

// Release 5
gradebook.getAverage = function(name) {
  return average(gradebook[name]["testScores"]);
};


// Release 6

function average(array) {
  var sum = 0
  for (var i = 0; i < array.length; i++) {
    sum += array[i];
  };
  return (sum/array.length);
};

console.log(gradebook.getAverage("Elizabeth"))





// __________________________________________
// Refactored Solution

// Can't find any to refactor






// __________________________________________
/* Reflect
What did you learn about adding functions to objects?
I learned that it is very simple to add functions to objects.  The functions we used were also easy to create and structure.
How did you iterate over nested arrays in JavaScript?
You iterate over nested arrays creating the function you would like to use, and then using a different function to run the first function you created on to the correct nested array.  One of the functions has the actual workings you would like to do, and the other provides the direction in which to do them.
Were there any new methods you were able to incorporate? If so, what were they and how did they work?
We did not incorporate any new methods, and actually just used simple methods to complete the assignment.
*/




// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)