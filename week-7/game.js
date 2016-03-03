 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: Player starts in a room and moves to fight different enemies
// Overall mission: Fight enemies, level up
// Goals: Fight enemies
// Characters: Player, Troll, Dragon, Mouse
// Objects: Player, Troll, Dragon, Mouse
// Functions: look, fight, levelup, stats

// Pseudocode
/* Create objects for troll dragon mouse and player with properties
   Properties: armor, health, damage, armor, gold, exp
   Create function fight which allows player to fight with other enemies
   While one of them has health above 0, they keep hitting each other.
   Create function look which allows you to see what is in the room
   Picks up a helpful item
   Create function stats to view your current stats
   */
// Initial Code
// Run in Inspector on a website, no prompt in command line

// var player = {
//   health: 100,
//   damage: 5,
//   armor: 5,
//   gold: 0,
//   exp: 0,
//   level: 1
// };

// var dragon = {
//   health: 125,
//   damage: 7,
//   armor: 2,
//   name: "Dragon",
//   gold: 2000,
//   exp: 100
// };

// var troll = {
//   health: 25,
//   damage: 10,
//   armor: 3,
//   name: "Troll",
//   gold: 500,
//   exp: 20
// };

// var mouse = {
//   health: 2,
//   damage: 1,
//   armor: 0,
//   name: "Mouse",
//   gold: 2,
//   exp: 2
// }
// while (player.health > 0){
//   var answer = prompt("You have made your way into the depths of the dungeon.  Around the room there are remains of other warriors who have fallen before you.  In front of you there is a large door with a Dragon inscribed in bronze shaped like a door knocker.  To the left of you there is a smaller door from which you can hear gentle hums and grunts.  To the right there is a an opening that you could perhaps squeeze through.  What do you decide to do? right, left, forward, look")

//   switch (answer) {


//     case "forward":
//     fight(player, dragon);
//     break;
//     case "right":
//     fight(player, mouse);
//     break;
//     case "left":
//     fight(player, troll);
//     break;
//     case "look":
//     var look = prompt("You look around the room and see a club, a shield, a book, and a potion. Which do you pick up? club, shield, book, potion")
//     switch (look) {
//       case "club":
//       player.damage = player.damage + 10
//       console.log("You have gained 10 damage. Your damage is now " + player.damage)
//       break;
//       case "shield":
//       player.armor = player.armor + 10
//       console.log("You have gained 10 armor. Your armor is now " + player.armor)
//       break;
//       case "book":
//       player.exp = player.exp + 2000
//       console.log("You have gained 2000 exp. You experience is now " + player.exp)
//       break;
//       case "potion":
//       player.health = 100 + (player.level * 20)
//       console.log("You have restored your health to full.")
//       break;
//     }


//   };

// // Functions:
// fight = function(player, enemy) {
//   while (player.health > 0 && enemy.health > 0) {
//     player.health = player.health - (enemy.damage - player.armor)
//     console.log(enemy.name + " Attacks!")
//     console.log("Your health is: " + player.health)
//     enemy.health = enemy.health - (player.damage - enemy.armor)
//     console.log("You Attack!")
//     console.log(enemy.name+ "'s " + "health is " + enemy.health)
//   };
//   if (player.health < 0)
//     console.log("You died!");
//   else if (enemy.health <0)
//     player.gold = player.gold + enemy.gold
//   player.exp = player.exp + enemy.exp
//   console.log(enemy.name + " has died!  You have gained " + enemy.gold + " gold pieces and " + enemy.exp + " experience.")
//   if (enemy.exp >= 100){
//     levelup(player)};
//   };

//   levelup = function(player) {
//     player.level = player.level + 1
//     player.damage = player.damage + 5
//     player.health = player.health + (player.level * 20)
//     console.log("You have gained a level! You are now level " + player.level + "!" + " Your health has expanded to " + player.health + " and your damage has increased to " + player.damage + ".")
//   }



//   look = function() {
//     console.log("You look around the room and see a club, a shield, a book, and a health potion.")
//   }

//   stats = function(player) {
//     console.log("Your current health is " + player.health)
//     console.log("Your current damage is " + player.damage)
//     console.log("Your current armor is " + player.armor)
//     console.log("Your current level is " + player.level)
//     console.log("Your current gold is " + player.gold)
//     console.log("Your current experience is " + player.exp)
//   }

//   stats(player)
// }

// Refactored Code
// Not much refactored code, it is in a very simple form
var player = {
  health: 100,
  damage: 5,
  armor: 5,
  gold: 0,
  exp: 0,
  level: 1
};

var dragon = {
  health: 125,
  damage: 7,
  armor: 2,
  name: "Dragon",
  gold: 2000,
  exp: 100
};

var troll = {
  health: 25,
  damage: 10,
  armor: 3,
  name: "Troll",
  gold: 500,
  exp: 20
};

var mouse = {
  health: 2,
  damage: 1,
  armor: 0,
  name: "Mouse",
  gold: 2,
  exp: 2
}
while (player.health > 0){
  var answer = prompt("You have made your way into the depths of the dungeon.  Around the room there are remains of other warriors who have fallen before you.  In front of you there is a large door with a Dragon inscribed in bronze shaped like a door knocker.  To the left of you there is a smaller door from which you can hear gentle hums and grunts.  To the right there is a an opening that you could perhaps squeeze through.  What do you decide to do? right, left, forward, look")

  switch (answer) {
    case "forward":
    fight(player, dragon);
    break;
    case "right":
    fight(player, mouse);
    break;
    case "left":
    fight(player, troll);
    break;
    case "look":
    var look = prompt("You look around the room and see a club, a shield, a book, and a potion. Which do you pick up? club, shield, book, potion")
    switch (look) {
      case "club":
      player.damage = player.damage + 10
      console.log("You have gained 10 damage. Your damage is now " + player.damage)
      break;
      case "shield":
      player.armor = player.armor + 10
      console.log("You have gained 10 armor. Your armor is now " + player.armor)
      break;
      case "book":
      player.exp = player.exp + 2000
      console.log("You have gained 2000 exp. You experience is now " + player.exp)
      break;
      case "potion":
      player.health = 100 + (player.level * 20)
      console.log("You have restored your health to full.")
      break;
    }


  };

// Functions:
fight = function(player, enemy) {
  while (player.health > 0 && enemy.health > 0) {
    player.health = player.health - (enemy.damage - player.armor)
    console.log(enemy.name + " Attacks!")
    console.log("Your health is: " + player.health)
    enemy.health = enemy.health - (player.damage - enemy.armor)
    console.log("You Attack!")
    console.log(enemy.name+ "'s " + "health is " + enemy.health)
  };
  if (player.health < 0)
    console.log("You died!");
  else if (enemy.health <0)
    player.gold = player.gold + enemy.gold
  player.exp = player.exp + enemy.exp
  console.log(enemy.name + " has died!  You have gained " + enemy.gold + " gold pieces and " + enemy.exp + " experience.")
  if (enemy.exp >= 100){
    levelup(player)};
  };

  levelup = function(player) {
    player.level = player.level + 1
    player.damage = player.damage + 5
    player.health = player.health + (player.level * 20)
    console.log("You have gained a level! You are now level " + player.level + "!" + " Your health has expanded to " + player.health + " and your damage has increased to " + player.damage + ".")
  }



  look = function() {
    console.log("You look around the room and see a club, a shield, a book, and a health potion.")
  }

  stats = function(player) {
    console.log("Your current health is " + player.health)
    console.log("Your current damage is " + player.damage)
    console.log("Your current armor is " + player.armor)
    console.log("Your current level is " + player.level)
    console.log("Your current gold is " + player.gold)
    console.log("Your current experience is " + player.exp)
  }

  stats(player)
}





// Reflection
/*
What was the most difficult part of this challenge?
The most difficult part of this challenge was coming up with the idea for the game, and also making sure everything worked together at the end (bug testing).  Since there is no command line prompt for javascript, this furthered the difficulty of running the program in node, and must be run through DevTools on Chrome.
What did you learn about creating objects and functions that interact with one another?
I learned that it is pretty simple to create objects and have functions that interact with them, yet coming up with formulas for exactly what you would like to happen is tougher.  Also, running a prompting game through javascript is very tough as there is no command line prompt, while in Ruby this is a simple function.
Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
I couldn't really think of any built-in methods to use as my game is very simple at heart, but I think if I had used a different type of framework perhaps I would be using more built-in methods.  There was no difficult math or mapping happening, so while loops and if/else statements and a switch case fit well.
How can you access and manipulate properties of objects?
You can access and manipulate properties of objects simply by using the object.property notation as long as you have defined your objects, and your functions are declarations.
*/
