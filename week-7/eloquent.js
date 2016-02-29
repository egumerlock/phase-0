// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var my_var = 150;
  debt = my_var * 5;
  console.log(debt);

prompt("What is your favorite food?")
console.log("Hey! That's my favorite food too!")


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

var pound = "";
var counter = 0;
while (counter < 7) {
  counter = counter + 1;
  pound += "#";
  console.log(pound)
}


// Functions

// Complete the `minimum` exercise.
 function min(a, b) {
    if (a == b)
      console.log("The numbers are equal!");
    else if (a > b)
      return b;
    else
      return a;
  }

  console.log(min(0, -10))


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = {
  name: "Eric Gumerlock",
  age: 27,
  favorite_foods: ["pasta", "steak", "pesto"],
  quirk: "owns bearded dragons"
};

/* Reflection
Introduction
Did you learn anything new about JavaScript or programming in general?
I learned that it was introduced in 1995 as a way to add programs to web pages, and that it has almost nothing to do with Java, but was simply riding on the back of the popularity of Java.  ECMAScript standard = Javascript.
Are there any concepts you feel uncomfortable with?
The new notation looks quite unconfortable but I think that will change with time and effort.

Ch. 1
Identify two similarities and two differences between JavaScript and Ruby syntax with regard to numbers, arithmetic, strings, booleans, and various operators.
Two similarities between Javascript and Ruby syntax are the logical operators, and the conditional (ternary) operator.  They are pretty much exactly the same being && for and, || for or, and true ? 1 : 2 for the conditional.  These are all exactly the same syntax.  One difference is the value for undefined in Javascript which can also be null (these are equal).  In Ruby we only have nil.  Another difference is the value of NaN or not a number.  This is returned when you perform an illegal action, such as multiplying a string by an integer, it will return this value.  It is not equal to itself and has some peculiar characteristics.  In Ruby, this statement would be evaluated, or return an error message.

Ch. 2
What is an expression?
A fragment of code that produces a value is an expression.
What is the purpose of semicolons in JavaScript? Are they always required?
The purpose of a semicolon in Javascript is to indicate the end of a statement.  They are not always required but for our purposes at the moment, they are since the rules are somewhat complex and error-prone.
What causes a variable to return undefined?
When you define a variable without giving it a value, it returns undefined.
Write your own variable and do something to it in the eloquent.js file.
What does console.log do and when would you use it? What Ruby method(s) is this similar to?
console.log prints to the console the variable or statement that you specify.  This is similar to the puts/print method in ruby, where it prints to the console, but it does not specifically change the value of your program.  It could be returning a completely different value, while you are printing something else.
Write a short program that asks for a user to input their favorite food. After they hit return, have the program respond with "Hey! That's my favorite too!" (You will probably need to run this in the Chrome console (Links to an external site.) rather than node since node does not support prompt or alert). Paste your program into the eloquent.js file.
Describe while and for loops
What other similarities or differences between Ruby and JavaScript did you notice in this section?
Other similarities include that you can only define a variable by writing the variable first and then setting it equal to a value. Curly brackets are used in almost every case of loops.  Else statements look very similar to Ruby if statement synatx.  Other differences include that you can use console.log("", x) syntax to print a variable directly, instead of using the #{} format in Ruby.  In statements, booleans should be contained within parantheses.
Complete at least one of the exercises (Looping a Triangle, FizzBuzz, of Chess Board) in the eloquent.js file.

Ch. 3
What are the differences between local and global variables in JavaScript?
Global variables are accessable from anywhere, also inside of functions, unless they have declared a variable that has the same name within the function.  Local variables are declared within a function, and don't have a scope past the function they are declared in.  Functions that are declared within a function can "see" variables that are declared within the overarching function.  However, outside of the environment of the overarching function, the variables do not have scope.
When should you use functions?
Functions should be used when performing an action on a set of variables.  Howver, they should also be used to store values, if you wish to.
What is a function declaration?
A function declaration is a shorter way to declare a variable equal to a function.  function square(x)
{} is essentially the same as var square = function(x) {}.  Howver, the one distinction is that function declarations are conceptually moved to the top of their scope, and can be used by all other code in that scope.  This makes a broader reaching function than say a variable that is defined as a function.
Complete the minimum exercise in the eloquent.js file.

Ch. 4
What is the difference between using a dot and a bracket to look up a property? Ex. array.max vs array["max"]
The difference between a dot and a bracket is that with the dot method, JavaScript fetches the property of the value named "x" or whatever you write after the dot.  With the bracket, JavaScript tries to evaluate the expression x and sues the result as the property name.
Create an object called me that stores your name, age, three favorite foods, and a quirk in your eloquent.js file.
What is a JavaScript object with a name and value property similar to in Ruby?
A JavaScript object is very similar to a Hash in Ruby, in that it can have nearly anything as a key, and have almost anything as a value, array or number, or string.

Reflection
What are the biggest similarities and differences between JavaScript and Ruby?
The syntax of Javascript and Ruby are very similar, minus a few differences like including parantheses for booleans and if statements, including a semi-colon after every statement.  Javascript also has two nil values, null and undefined, which are equal to each other.  Javascript local variable scope is a little different as well especially with the function declaration method, which defines the function at the top of the scope.
Was some of your Ruby knowledge solidified by learning another language? If so, which concepts?
Yes, I now understand Ruby a little better in terms of how it is constructed with functions and variables.  I also see how Ruby has tried to simplify the writing of code by taking out some of the reoccurring characters that are very necessary in Javascript to function.
How do you feel about diving into JavaScript after reading these chapters?
I feel pretty conifdent and am ready to jump into some exercises after reading these chapters.
*/