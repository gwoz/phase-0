// Separate Numbers with Commas in JavaScript **Pairing Challenge**
// 
// 
// I worked on this challenge with: Bobby Reith/Mike Gwozdek.
// 
// Pseudocode
//  take the input of integer
//  turn the integer into a string then reverse the string
//  add a comma after 3 chars 
//  the return will be a string with a comma in the thousands place 


// Initial Solution

   var separateComma = function(integer){
     var digits = integer.toString().split('').reverse();
     var newNumber = "", end = 0, wordCounter = 0, commaCounter = 0
     
    while (commaCounter <= digits.length + (end-1) ) {
       if (commaCounter % 4 != 0)  {
         newNumber += digits[wordCounter];
         wordCounter++;
         commaCounter++;
       }
       
       else if (commaCounter % 4 == 0) {
         newNumber += ",";
         commaCounter++;
         end++
       }
     }    
     return newNumber.substr(1).split("").reverse().join("");
   };

 console.log(separateComma(1212890))



// Refactored Solution

var separateComma = function(integer){
      return integer.toLocaleString();
}  
console.log(separateComma(123456789))


// Your Own Tests (OPTIONAL)
//  
//  
// 
//  
// Reflection

// What was it like to approach the problem from the perspective of JavaScript? Did you approach 
// the problem differently?
// ANS: We assumed there would be more methods available in JS that were similar to Ruby. 
// That was not the case and when we originally took an array approach it caused us some headaches. 
// Near the ended we wanted to use built-in methods that just didn't exist (Ex: Flatten). We had to
// rethink our approach and use a string because it became extremely complex without the built-in methods.

// What did you learn about iterating over arrays in JavaScript?
// ANS: I learned that conceptually it's similar to Ruby, but the syntax is slightly different. It seemed
// a bit more difficult to iterate in JavaScript because of the extra characters required.

// What was different about solving this problem in JavaScript?
// ANS: The muscle memory just wasn't there yet. I felt like it was my first week of Ruby all over again at times!
// I wanted to reach for tools/techniques that just weren't available so it took time to get accustomed to it.

// What built-in methods did you find to incorporate in your refactored solution?
// ANS: We found a built-in method called toLocaleString that works like magic! It detects the type of data 
// you are trying to input and determines the output based on the location specified. (Ex: Currencies, Number, DateTime Formatting)


