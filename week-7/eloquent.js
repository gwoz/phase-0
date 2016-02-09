// Eloquent JavaScript

// Program Structure
// Write your own variable and do something to it.
var personName = "Mike"
console.log(personName)

var favoriteFood = prompt("What's your favorite food?")
console.log(favoriteFood + " is my favorite too!")



// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

// Pseudocode
// Input: A trianlge building block
// Output: A triangle seven rows of blocks high
// Steps:
// 	 Define the character to use for your blocks
// 	 For a total of seven times
// 	 Print out the current number of blocks
// 	 Add one more block to the current number of blocks

// Initial Solution
block = "#"
for (var counter = 0; counter < 7; counter++) {
	console.log(block);
	block += "#";
}

// Pseudocode
// Input: The starting point for a list of numbers
// Output: The numbers replaced by Fizz, Buzz, or FizzBuzz
// Steps:
//   Define the counter starting position 	 
//   Until 100
// 	   IF the number is evenly divisible by 5, but not 3
//     THEN display Buzz and increment the counter
//     IF the number is both evenly divisible by 5 AND 3
//     THEN display FizzBuzz and increment the counter
// 	   IF the number is only divisible by 3
//     THEN display Fizz and increment the counter
//     ELSE display the number and increment the counter

// Initial Solution
var counter = 1
while (counter <= 100) {
	if (counter % 5 == 0 && counter % 3 != 0) {
		console.log("Buzz");
		counter++
	}
	else if (counter % 5 == 0 && counter % 3 == 0) {
		console.log("FizzBuzz")
		counter++
	}
	else if (counter % 3 == 0) {
		console.log("Fizz")
		counter++
	}
	else {
		console.log(counter)
		counter++
	}
}


// Functions

// Complete the `minimum` exercise.

// Pseudocode
// Input: Two values
// Output: The minimum of the two
// Steps:
//   IF the first number is less than the second
//   THEN the first number is the minimum
//   ELSE the second number is the minimum

// Initial Solution

var minimum = function(num1, num2) {
	if (num1 < num2) {
		return num1
	}
	else {
		return num2
	}
}

console.log(minimum(55,67))


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
	myName: "Mike",
	myAge: 100,
	myFoods: ["Jello","Pizza","Hamburger"],
	myQuirk: "I live in NYC, but I'm a wilderness guide too!",
}

console.log(me.myQuirk)







