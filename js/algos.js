
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


// driver code
var test = ["long phrase","longest phrase","longer phrase"];

longestWord(test);