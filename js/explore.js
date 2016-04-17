// Pseudocode for function that reverses an input string
// create container variables, one array to store the individual letters and a string to store the result
// starting at the end of the input string, FOR each letter add that letter to the container array
// starting at beginning of container array, FOR each letter concat. to the container string
//return the container string



// function to reverse a string, returning the reversed string
function reverse(string) {
  var letters = [];
  var new_string = '';
  for (var i = string.length-1; i >= 0; i--) {
    letters.push(string[i]);

  }
  for (var i = 0; i < letters.length; i++) {
    new_string += letters[i];

  }
  return new_string;
}


// driver code

var test = reverse("sycophant")

if (1 == 1) { console.log(test)}