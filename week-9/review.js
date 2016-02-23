
// JavaScript Grocery List Assignment
/*
Create a new list
Add an item with a quantity to the list
Remove an item from the list
Update quantities for items in your list
Print the list (Consider how to make it look nice!)
*/


// Pseudocode
/*
Create a new list
INPUT: N/A
OUTPUT: New list
STEPS: 
  Create an empty object

Add an item with a quantity to the list
INPUT: Item with quantity
OUTPUT: List including item with quantity
STEPS: 
  IF list includes item THEN add quantity
  ELSE add item with quantity

Remove an item from the list
INPUT: Item
OUTPUT: List without item
STEPS:
  IF list does not include item 
    THEN do nothing
  ELSE remove item
  
Update quantities for items in your list
INPUT: Item with quantity
OUTPUT: List with remaining quantity of items
STEPS:
    IF list does not include item 
    THEN do nothing
  ELSE IF list includes item with quantity less than quantity to remove 
    THEN remove item and all quantities
  ELSE IF list includes item with remaining quantity greater than quantity to remove
    THEN decrease quantity by the amount specified

Print the list (Consider how to make it look nice!)
INPUT: N/A
OUTPUT: Print out of all items and corresponding quantities
STEPS:
  FOR each item in the list PRINT item and quantity
*/


// Initial Solution
/*
function List() {
  this.listContents = {}
  this.addItem = function(item,quantity) {
    this.listContents[item] = quantity
  }
  this.removeItem = function(item) {
    delete this.listContents[item]
  }
  this.updateItem = function(item,quantity) {
    this.listContents[item] = quantity
  }
  this.displayList = function() {
    console.log("List Contents:")
    for (var item in this.listContents)
      console.log("There are " + this.listContents[item] + " " + item)
  }
}

var new_list = new List
new_list.addItem("pickles",3)
new_list.addItem("carrots",3)
new_list.addItem("boxes of cereal",3)
new_list.updateItem("pickles",7)
new_list.removeItem("carrots")
new_list.displayList()
*/


// Refactor


function List() {
  this.listContents = new Object
  // Consolidate add, update, and remove functions   
  this.updateList = function(item,quantity) {
    // Check if the item exists in the list already     
    if (this.listContents.hasOwnProperty(item)) {
      // If the item exists and the ending quantity will be more than 0, update it       
      if (this.listContents[item] + quantity > 0) {
        this.listContents[item] += quantity
      }
      // If the item exists, but the ending quantity will be less than 0, delete it
      else {delete this.listContents[item]}
    }
    // If the item does not exist, add it     
    else {this.listContents[item] = quantity} 
  }
  this.displayList = function() {
    console.log("List Contents:")
    for (var item in this.listContents) {
      console.log("There are " + this.listContents[item] + " " + item)
      }
  }
}


// Test
var new_list = new List
new_list.updateList("pickles",3)
new_list.updateList("pickles",4)
new_list.updateList("carrots",3)
new_list.updateList("carrots",-1)
new_list.displayList()


// Reflection
/*
What concepts did you solidify in working on this challenge?
ANS: I solidified syntax for creating objects, iterating, and conditional statements in JS.

What was the most difficult part of this challenge?
ANS: The most difficult part was remembering which methods are available in JS and which ones 
are only available in Ruby. That's something I seem to struggle with so I try to break down the 
solution in Pseudocode so it can be solved without relying on language specific methods inititally.

Did an array or object make more sense to use and why?
ANS: I used an object so I could capture both the item and the quantity. Using an obejct would also 
permit my list to be used elsewhere in a program instead of being specific to only this task.
*/

