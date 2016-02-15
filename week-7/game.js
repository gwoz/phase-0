// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: Stop Kim Kardashian from breaking the internet
// Goals: Type out each of her tweets before they can be posted and go viral
// Characters: You vs Kim
// Things: Strength of the internet, current level, and tweets that are about to be posted
// Functions: Display the strength of the internet, Change the strength of the internet, Play 
// a level, Display if you saved the internet or not


// Pseudocode
/*
Input: A celebrity name with their recent tweets
Output: A tweet and the results of typing out the correct/incorrect text
Steps:
  CREATE a game blueprint that can be reused
    Make containers to store the strength of the internet and current level
    Display text that indicates the strength of the internet
    CREATE a method to change the strength of the internet
      IF the strength is above 75% and the correct text is typed THEN game over AND winner
        ELSE reduce strenth of the internet
      IF the strength is below 25% and the incorrect text is typed THEN game over AND loser
        ELSE increase strength of the internet
      IF the strenght is between 25% and 75% THEN increase or decrease strength
    CREATE a method to display each tweet
      Display the text of each tweet
      IF your response is the same as the tweet THEN the strength of the internet should increase
      ELSE the strength of the internet should decrease
  CREATE a celebrity that can be used as the opponent with a name and collection of recent tweets
*/


// Initial Code

function Game(celebrity) {
  // Information about your game
  this.internetStrength = 75,
  this.currentLevel = 0,
  // Check on the strength of the internet
  this.checkStrength = function() {console.log("The internet strength is " + this.internetStrength)};
  // Determine what happens when you stop a tweet from being posted or when you fail to stop one
  this.changeStrength = function(result) {
    // When the strength is above 75%
    if (this.internetStrength >= 75) {
      if  (result == "good") {this.gameOver = true; 
        return this.winner
      }
      else if (result == "bad") {this.internetStrength -= 25; 
        return this.checkStrength()
      }
    }
    // When the strength is below 25%
    else if (this.internetStrength <= 25) {
      if  (result == "good") {this.internetStrength +=25; 
        return this.checkStrength()
      }
      else if (result == "bad") {this.gameOver = true; 
        return this.loser()
      }
    }
    // When the strength is between 25% and 75%
    else if (this.internetStrength < 75 && this.internetStrength > 25) {
      if  (result == "good") {this.internetStrength +=25; 
        return this.checkStrength()
      }
      else if (result == "bad") {this.internetStrength -= 25; 
        return this.checkStrength()
      }
    } 
  },
  // Play the level
  this.playLevel = function() {
    // Display the text for a tweet that's about to be posted
    var levelText = celebrity.recentTweets[this.currentLevel]
    console.log("\n\nQuick type this before she posts it!\n\n" + celebrity.recentTweets[this.currentLevel] + "\n");
    var response = prompt("Quick, type our her tweet before she posts it")
    if (response == celebrity.recentTweets[this.currentLevel]) {
      // When you stop a tweet from being posted
      console.log("You typed: " + response);
      console.log("NICE WORK!");
      this.currentLevel++;
      return this.changeStrength("good");
    }
    else {
      // When you fail to stop a tweet from being posted
      console.log("You typed: " + response);
      console.log("OH NO!");
      this.currentLevel++;
      return this.changeStrength("bad");
    }
  },
  // End Game
  this.gameOver =  false,
  this.winner = function() {console.log("You saved the internet from " + celebrity.name + "!")},
  this.loser = function() {console.log("GAME OVER! You let " + celebrity.name + "'s tweets break the internet!")}

}
  
// The "Kim" levels
var kim = {
  name: "Kim Kardashian",
  recentTweets: ["Do you believe in mermaids? Tune into KUWTK tonight to see some real mermaids.","Can you believe I found the selfies while Khloe was going to jail!!!! #KUWTK","Please motivate me to workout today. I'm so tired but my trainer will be here in 10 mins.","I know! LETS START A TWITTER PETITION! Who wants to be able to use KIMOJI'S on twitter???","I'm so sleepy...why is it time to get up?!?!","I'm literally the funniest person alive!"]
}


// Play the Game with the "Kim" levels

var newGame = new Game(kim)

newGame.playLevel()
newGame.playLevel()
newGame.playLevel()


// Refactored Code

function Game(celebrity) {
  this.internetStrength = 75,
  this.currentLevel = 0,
  this.checkStrength = function() {console.log("The internet strength is " + this.internetStrength)};
  this.changeStrength = function(result) {
    if (this.internetStrength >= 75) {
      if  (result == "good") {this.gameOver = true; return this.winner}
      else if (result == "bad") {this.internetStrength -= 25; return this.checkStrength()}
    }
    else if (this.internetStrength <= 25) {
      if  (result == "good") {this.internetStrength +=25; return this.checkStrength()}
      else if (result == "bad") {this.gameOver = true; return this.loser()}
    }
    else if (this.internetStrength < 75 && this.internetStrength > 25) {
      if  (result == "good") {this.internetStrength +=25; return this.checkStrength()}
      else if (result == "bad") {this.internetStrength -= 25; return this.checkStrength()}
    } 
  },
  this.playLevel = function() {
    var levelText = celebrity.recentTweets[this.currentLevel]
    console.log("\n\nQuick type this before she posts it!\n\n" + celebrity.recentTweets[this.currentLevel] + "\n");
    var response = prompt("Quick, type our her tweet before she posts it")
    if (response == celebrity.recentTweets[this.currentLevel]) {
      console.log("You typed: " + response);
      console.log("NICE WORK!");
      this.currentLevel++;
      return this.changeStrength("good");
    }
    else {
      console.log("You typed: " + response);
      console.log("OH NO!");
      this.currentLevel++;
      return this.changeStrength("bad");
    }
  },
  this.gameOver =  false,
  this.winner = function() {console.log("You saved the internet from " + celebrity.name + "!")},
  this.loser = function() {console.log("GAME OVER! You let " + celebrity.name + "'s tweets break the internet!")}

}
  
// The "Kim" levels
var kim = {
  name: "Kim Kardashian",
  recentTweets: [
  "Do you believe in mermaids? Tune into KUWTK tonight to see some real mermaids.",
  "Can you believe I found the selfies while Khloe was going to jail!!!! #KUWTK",
  "Please motivate me to workout today. I'm so tired but my trainer will be here in 10 mins.",
  "I know! LETS START A TWITTER PETITION! Who wants to be able to use KIMOJI'S on twitter???",
  "I'm so sleepy...why is it time to get up?!?!","I'm literally the funniest person alive!"
  ]
}

// Play the Game with the "Kim" levels

var newGame = new Game(kim)

newGame.playLevel()
newGame.playLevel()
newGame.playLevel()


// Reflection
/*
What was the most difficult part of this challenge?
ANS: The most difficult part for me was switching from my Ruby mindset to JavaScript.

What did you learn about creating objects and functions that interact with one another?
ANS: I learned that I need to pay very close attention to scope. Initially I wanted to make something a bit more complex, but was
unable to get everything to work together correctly.

Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
ANS: I only had time to improve the readability of my code for my refactored solution so I did not use any new built-in methods.

How can you access and manipulate properties of objects?
ANS: You can access the properties of objects directly to change them or you can iterate over them.
*/
