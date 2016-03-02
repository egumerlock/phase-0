// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: David Kaiser .

// Pseudocode
//get an input of an integer
//convert to string
//split into individual digits (it is now an array)
//start at right edge, move three digits, if there is another digit, add a comma before it
//join digits into one large string
//print to screen


// // Initial Solution

// function separateComma(x){
//   var input_array = x.toString().split("").reverse();
//   if (input_array.length <4) {
//     return x
//   };

//   for (var i = 3; i <= input_array.length-1; i += 4){

//    input_array.splice(i, 0, ","); //unless there's no more digits


//   // output_array.unshift(input_array.pop())
// //[x,y,z,a]
//     // if i%3 == 1 || 2 pop from input_array, shift to output_array
//     // if i%3 == 0, and there is additional stuff in the array, pop from input_array, shift to output_array, shift a comma to output_array

//     };
//   var output_array = input_array.reverse().join("")

//   //console.log(output_array)

//   return output_array
// };

// console.log(separateComma(12444443))



// Refactored Solution
function separateComma(x){
  var input_array = x.toString().split("");
  for (var i = 3; i <= input_array.length-1; i += 4){
    input_array.splice(-i, 0, ",");
    };
  var output_array = input_array.join("")
  console.log(output_array)
  return output_array
};


separateComma(122222)


// Your Own Tests (OPTIONAL)




// Reflection
/*
What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
Approaching the problem in Javascript, I knew we had to approach with some sort of iteration over the data.  Once we found the .splice() method looking at the Javascript array method sheet, we decided with some tinkering we could splice in a comma every 3 index values.  We used .reverse at first because we knew we had to approach from the right so to speak, and then managed to do so without using .reverse.
What did you learn about iterating over arrays in JavaScript?
We used a for loop to iterate over the array because it allows you to iterate at certain index values only, which is what we wanted with the .splice() method.
What was different about solving this problem in JavaScript?
Javascript has different methods than Ruby, so we knew we had to find the correct method for what we were trying to achieve.  It took us almost half of the time to find this method.
What built-in methods did you find to incorporate in your refactored solution?
.splice() but with a -i was incorporated to run the iteration from the right without using .reverse.
*/