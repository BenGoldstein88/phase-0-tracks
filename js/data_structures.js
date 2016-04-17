var colors = ["blue", "orange", "purple", "pink"];
var names = ["Ed", "Barnabas", "Highwayman", "Scrimbles"];

colors.push("yellow-ochre");
names.push("Matilda");

var horses = {}

for (var i = 0; i < colors.length; i++){
  horses[names[i]] = colors[i];

}

console.log(horses)

function Car(make, model, year) {
  this.make = make;
  this.model = model;
  this.year = year;

  this.getInfo = function(){ console.log("This is a " + year + " " + make + " " + model + ".")}

  this.vroom = function() { console.log("Vrooooooommmmm!")}


}

var junker = new Car("Buick", "Oldsmobile", "1982");

junker.getInfo();
junker.vroom();