// Pseudocode
// Input: a command, add, remove, print, or update
// Output: edit a grocery list object, print out the updated grocery list
// Steps:
// 1. Add an item to an object with a function that takes two variables, sets them to property and value in an object
// 2. Make a function for remove, that deletes the property as well as its value
// 3. Make a function for update which takes two variables, and checks first to see if the object has that property.  If yes, edit the quantity.
// 4. Print the list in a nicely readable fashion with a function
// 5. Put it all together with prompts from the user and a case statement to follow

//Initial Solution

// var groceryList = {}

// var add_item = function (item, quantity) {
//   groceryList[item] = quantity;
// }

// add_item("juice", 1)
// add_item("beef", 2)
// add_item("ice cream", 20)

// var remove_item = function (item) {
//   delete groceryList[item]
//   delete groceryList.item
// }

// var update_item = function (item, quantity) {
//   if (groceryList.hasOwnProperty(item))
//     groceryList[item] = quantity;
//   else
//     throw "That item is not on your Grocery List"
// }

// var print_list = function (list) {
//   var x = 0;
//   for (x in list) {
//     console.log(list[x] + " " + x);
//   }
// }

// print_list(groceryList)

// var answer = prompt("What would you like to do to your Grocery List?  add, remove, update, print")
//   switch (answer) {
//     case "add":
//       var item_title = prompt("What is the item you would like to add?")
//       var item_quantity = prompt("And the quantity?")
//       add_item(item_title, item_quantity)
//       alert("You have successfully added" + " " + item_quantity + " " + item_title)
//       print_list(groceryList)
//       break;
//     case "remove":
//       var item_title = prompt("What is the item you would like to delete?")
//       remove_item(item_title)
//       alert("You have successfully removed " + item_title)
//       print_list(groceryList)
//       break;
//     case "update":
//       var item_title = prompt("Which item would you like to update?")
//       var item_quantity = prompt("What is the new quantity for this item?")
//       update_item(item_title, item_quantity)
//       print_list(groceryList)
//     break;
//   case "print":
//     print_list(groceryList)
//     break;
// }

// Refactored Solution
var groceryList = {}

var add_item = function (item, quantity) {
  groceryList[item] = quantity;
}

add_item("juice", 1)
add_item("beef", 2)
add_item("ice cream", 20)

var remove_item = function (item) {
  delete groceryList[item]
  delete groceryList.item
}

var update_item = function (item, quantity) {
  if (groceryList.hasOwnProperty(item))
    groceryList[item] = quantity;
  else
    throw "That item is not on your Grocery List"
}

var print_list = function (list) {
  var x = 0;
  for (x in list) {
    console.log(list[x] + " " + x);
  }
}

print_list(groceryList)

var answer = prompt("What would you like to do to your Grocery List?  add, remove, update, print")
  switch (answer) {
    case "add":
      var item_title = prompt("What is the item you would like to add?")
      var item_quantity = prompt("And the quantity?")
      add_item(item_title, item_quantity)
      alert("You have successfully added" + " " + item_quantity + " " + item_title)
      print_list(groceryList)
      break;
    case "remove":
      var item_title = prompt("What is the item you would like to delete?")
      remove_item(item_title)
      alert("You have successfully removed " + item_title)
      print_list(groceryList)
      break;
    case "update":
      var item_title = prompt("Which item would you like to update?")
      var item_quantity = prompt("What is the new quantity for this item?")
      update_item(item_title, item_quantity)
      print_list(groceryList)
      break;
    case "print":
      print_list(groceryList)
      break;
  }



// Reflection
/*
What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
I solidified iterating over an object with a for loop, case statement, prompt, and also creating function relating to objects.  I did not use constructors.
What was the most difficult part of this challenge?
The most difficult part was refactoring.  Even though I spent awhile looking, I really could not come up with a way to refactor, even though I know it is not the greatest of code.  Also, thinking about how to print the list nicely and make it display in that fashion was the function that took me the longest to write.
Did an array or object make more sense to use and why?
I think an object makes more sense as index values have really no place in a grocery list.  You could have the quantity in the element before the item, but really, it makes more sense as a data structure to use an object where each item has one corresponding quantity value.
*/