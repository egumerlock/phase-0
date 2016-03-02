 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: Player encounters a troll and a bridge to cross.
// Overall mission: Get passed the Troll by whatever means necessary
// Goals: Encounter a troll and make your way across the bridge
// Characters: Player, Troll
// Objects: Player, Troll, Bridge
// Functions: Persuade, Bribe, Fight, Sneak, Think, Look, Train, Intimidate

// Pseudocode
// Declare a player object that will have properties that change depending on actions they take and items they find.
// Add different functions that the player can take.
// Declare a Troll object and give it properties that change
// Check what items you player has.
// If you have certain items, you can pass the troll in different ways.

// Initial Code
var player = {
  armed: false,
  persuasion: false,
  cloak: false,
  torch: false,
  gold: false,
  boat: false,
  success: false
}

var troll = {
  defeated: false,
  bribed: false,
  persuaded: false,
  tricked: false
}

var answer = prompt("You come across a nasty looking troll who is also quite gigantic.  He is roasting a bird over a fire on his bridge.  You must cross the bridge to get to your house, but the troll remains steadfast.  What do you do? (look, persuade)")

switch(answer) {
    case "look":
        text = "You see a club, a cloak, and a piece of shiny gold.";
        item = prompt("You see a club, a cloak, and a brick of shiny gold. Which do you pick up?");
        switch(item) {
          case "cloak":
            player.cloak = true;
            action = prompt("How will you try to pass the troll now? (sneak, bribe, fight)")
            if (action == "sneak") {
              player.success = true;
              troll.tricked = true;
              console.log("You snuck past the sleeping troll in the dead of night covered by your stealthy cloak. You still hear the snores as you slip away towards your home.")}

            else {
              console.log("The troll beats you to a pulp and the world forgets your name...")}
              break;
          case "club":
            player.armed = true;
            action = prompt("How will you try to pass the troll now? (sneak, bribe, fight)")
            if (action == "fight") {
              player.success = true;
              troll.defeated = true;
              console.log("You managed to incapacitate the troll, but not without sustaining multiple lacerations of your own.  Things are looking grim and you probably won't make it home...")}

            else {
              console.log("The troll beats you to a pulp and the world forgets your name...")}
              break;
          case "gold":
            player.gold = true;
            action = prompt("How will you try to pass the troll now? (sneak, bribe, fight)")
            if (action == "bribe") {
              player.success = true;
              troll.bribed = true;
              console.log("The troll thanks you for doing business with him and lets you pass.  You think about what you could have bought with that brick of gold at home... A mansion? With a two car garage? Oh well better to not think about such things....")}

            else {
              console.log("The troll beats you to a pulp and the world forgets your name...")}
              break;
        }
        break;
    case "persuade":
          story = prompt("You realize that the troll does not converse very well and that he is a creature of few words.  He says 'money money' over and over again.  You wonder how you will ever persuade him to let you cross for free.  Then you decide that you will have to prove you are a good storyteller.  Will you tell a story about your grandma, one about dragon's gold, or a story of spirits? (grandma, gold, spirits)");
        switch(story) {
          case "grandma":
            player.success = true;
            troll.tricked = true;
            console.log("You stand there for hours telling the most boring story you could think of.  The troll tries his best to listen to it, but finally cannot take it anymore and turns around, gently falling to sleep.  You sneak past while the troll snoozes...");
            break;
          case "gold":
            console.log("The story of Dragon's gold gets the troll riled up.  With a glimmer in his eyes, he grabs you and demands you tell him where the gold is.  After a few minutes of your pleading, he realizes you know nothing, and throws you in the river.");
            break;
          case "spirits":
            action = prompt("The troll becomes superstitious and paranoid, and asks you whether or not the spirits will punish him.  Yes or No?");
            if (action == "Yes") {
              player.success = true;
              troll.persuaded = true;
              console.log("The troll cowers and squeals, wondering if lightning will strike him down at any moment.  After you watch the troll lying in fetal position for a few minutes, you swiftly walk across the bridge to your home.")}

            else {
              console.log("The troll is no longer scared of the spirits and beats you to a pulp and the world forgets your name...")}
              break;
        }
        break;
}
// Functions: Sneak, Think, Look, Train, Intimidate

train = function(hours) {
  if (hours >= 3){
    player.armed = true;
    troll.defeated = true;
  }
}

think = function(hours) {
  if (hours >= 3){
    player.persuasion = true;
    troll.persuaded = true;
  }
}

look = function(hours) {
  if (hours >= 3){
    player.cloak = true;
    player.gold = true;
    player.armed = true;
  }
}

sneak = function(hours) {
  if (hours >= 3){
    troll.tricked = true;
  }
}

intimidate = function(hours) {
  if (hours >= 3){
    player.persuasion = true;
    troll.persuaded = true;
  }
}

cross = function() {
  if (player.armed = true) {
    console.log("You will be able to fight the troll due to your preparation.")
  }
  else if (player.persuasion = true) {
    console.log("You will be able to persuade the troll due to your extended time of thought.")
  }

}

train(2)
intimidate(3)
cross()
// Refactored Code






// Reflection
//
//
//
//
//
//
//
//