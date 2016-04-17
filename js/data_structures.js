// horse arrays
var colors = ["blue", "orange", "purple", "pink"];
var names = ["Ed", "Barnabas", "Highwayman", "Scrimbles"];

colors.push("yellow-ochre");
names.push("Matilda");

var horses = {}

// loop to associate horse names and colors
for (var i = 0; i < colors.length; i++){
  horses[names[i]] = colors[i];

}

// driver code
console.log(horses)

// Car constructor
function Car(make, model, year) {
  this.make = make;
  this.model = model;
  this.year = year;

// prints the info
  this.getInfo = function(){ console.log("This is a " + year + " " + make + " " + model + ".")}

// makes the car go fast
  this.vroom = function() { console.log("Vrooooooommmmm!")}


}

//driver code
var junker = new Car("Buick", "Oldsmobile", "1982");

junker.getInfo();
junker.vroom();