
// Pseudocode:
// make container variables for word and index(though index unnecessary for specifics of challenge)
// FOR each item in the array, compare the length of that item to the currentLongest (the first item should always be longer than the container variable unless it's an empty string)
// IF the length is greater, make the current item the currentLongest
// RETURN the currentLongest post loop


// function to return longest string in array of strings
function longestWord(words) {
  // container variables
  var currentLongest = "";
  var indexAtLongest = null;
  // loop through array
  for (var i = 0; i < words.length; i++) {
    // for readability
    var currentString = words[i];

    // if the current string is the longer than any before it, make it the longest
    if (currentString.length > currentLongest.length) {
      currentLongest = currentString;
      indexAtLongest = i;
    }
  }

console.log(currentLongest);
return currentLongest;
}


// Pseudocode:
// Assume no pair matching
// FOR each key in object1, check if object2 has that key
// IF they share a key, check the values
// IF they share a key-value pair, set result to true
// RETURN result

// function to determine whether two objects share a key-value pair
function compareKeyValue(obj1, obj2) {
  // assume they don't
  var result = false;
  // for each key in obj1
  for (var key in obj1) {
    // see if obj2 has that key
    if (obj2.hasOwnProperty(key)){
      // if they do share a key, see if they share the value of that key
      if (obj1[key] == obj2[key]) {
        // if so, they share a key-value pair so we can return true
        result = true;
      }
    }
  }
  return result;
}


// driver code
var test = ["long phrase","longest phrase","longer phrase"];

longestWord(test);

// driver code
var object1 = {name: "Bob", age: 50};
var object2 = {name: "Debbie", age: 50};
var object3 = {name: "Karl", age: 12};
var object4 = {ponies: "Karl", ripening: 12};

console.log(compareKeyValue(object1, object2));
console.log(compareKeyValue(object3, object4));