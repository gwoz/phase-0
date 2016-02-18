// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with [Mike Gwozdek/Michael Wang]:
// This challenge took me [2.5] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1, Mary: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode

/*
Input: List of votes for each position
Output: Winner for each position
Steps: 
Count the votes
  FOR each position, iterate through the votes and total them
    IF the vote is for a person who does not exist in the list
      THEN add the person's name to the list with one vote
    ELSE increment the vote count for the person by one

Determine the winner
  FOR each position, iterate through the vote totals
    IF the votes are higher than the last name checked
      THEN temproarily store the name
    THEN return the name of the winner for the position
*/


// __________________________________________
// Initial Solution

// for (var key in votes) {
//   var voter = votes[key];
//   var pres = voteCount["president"];
//   if(!voteCount["president"].hasOwnProperty(voter["president"])){
//     voteCount["president"][voter["president"]] = 1;
//   }
//   else {voteCount["president"][voter["president"]] += 1;}
  
//   if(!voteCount["vicePresident"].hasOwnProperty(voter["vicePresident"])){
//     voteCount["vicePresident"][voter["vicePresident"]] = 1;
//   }
//   else {voteCount["vicePresident"][voter["vicePresident"]] += 1;}
  
//   if(!voteCount["secretary"].hasOwnProperty(voter["secretary"])){
//     voteCount["secretary"][voter["secretary"]] = 1;
//   }
//   else {voteCount["secretary"][voter["secretary"]] += 1;}
  
//   if(!voteCount["treasurer"].hasOwnProperty(voter["treasurer"])){
//     voteCount["treasurer"][voter["treasurer"]] = 1;
//   }
//   else {voteCount["treasurer"][voter["treasurer"]] += 1;}
// }

// for (var position in voteCount) {
// var winner = "None"
// var votes = 0
//   for (var name in voteCount[position]) {
//     if (voteCount[position][name] > votes) {
//       votes = voteCount[position][name];
//       winner = name;
//     }
//     officers[position] = winner;
//   }
// }


// __________________________________________
// Refactored Solution

for (var position in voteCount) {
  for (var key in votes) {
    var voter = votes[key];
    if(!voteCount[position].hasOwnProperty(voter[position])){
      voteCount[position][voter[position]] = 1;
    }
    else {voteCount[position][voter[position]] += 1;}
  }
}
  
for (var position in voteCount) {
var winner = "None"
var votes = 0
  for (var name in voteCount[position]) {
    if (voteCount[position][name] > votes) {
      votes = voteCount[position][name];
      winner = name;
    }
    officers[position] = winner;
  }
}


// __________________________________________
// Reflection
/*
What did you learn about iterating over nested objects in JavaScript?
ANS: I learned to use bracket notation when iterating over nested objects instead of dot notation. I also 
found it easier to figure out how to access a certain property and then use temporary varibles to store it. 
This would keep the code easy to read until the problem was initially solved. Once I solved the problem it was 
then easy to refactor and take out unnecessary temporary variables.

Were you able to find useful methods to help you with this?
ANS: Yes, we used hasOwnProperty to determine whether the name of someone already existed in the vote count. If it 
did not exist we could add it. If it did exist we could increment it.

What concepts were solidified in the process of working through this challenge?
ANS: Looping in general was solidified for me. This one really required some thinking which was difficult, but led to
a few breakthroughs. I also found the last 10% of the Codecademy JS track to be helpful with loops and objects.
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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)