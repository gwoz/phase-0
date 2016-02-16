/*
Gradebook from Names and Scores

I worked on this challenge [Mike Gwozdek/Alivia Blount]
This challenge took me [2.5] hours.

You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).

Do not alter the students and scores code.

*/

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

students.forEach(function(student) {
  gradebook[student] = {};
})


// Release 3

for (var i = 0; i < students.length; i++){
  var student = students[i];
  var grade = scores[i];
  gradebook[student]["testScores"] = {};
  gradebook[student]["testScores"] = grade;
 }


// Release 4

gradebook["addScore"] = function(name,score) {
    gradebook[name]["testScores"].push(score);
}


// Release 5/7

gradebook["getAverage"] = function(name){
  return average(gradebook[name]["testScores"])
};


// Release 6

// function average(array) {
//   var sum = array.reduce(function(total, current){return total + current});
//   return sum/array.length;
// };



// __________________________________________
// Refactored Solution


// Release 6

function average(array) {
  return array.reduce(function(total, current){return total + current})/array.length;
};




// __________________________________________
// Reflect
/*
What did you learn about adding functions to objects?
ANS: I learned that it's really important to remember scope. For the last 3 releases we struggled
to figure out why we were returning undefined. We realized the last function was NOT supposed to be 
a property of the gradebook object. Once we learned that we were able to make adjustments and pass
all tests.

How did you iterate over nested arrays in JavaScript?
ANS: We used both forEach and For in this assignment. With the simple iteration over the students array,
we decided the best technique would be forEach since we only needed to create a property out of 
each value. We decided to use For on the others which would allow us to iterate while having access to the index. 
We could use that index to move through the arrays being added to the gradebook.

Were there any new methods you were able to incorporate? If so, what were they and how did they work?
ANS: Yes, we used reduce. This was helpful for generating a sum of all the values in an array so that we could 
produce the mean. Reduce allows you to define two arguments; one for the running total and another for the 
current number. You can add each value in the array to the running total and then return it at the end.
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