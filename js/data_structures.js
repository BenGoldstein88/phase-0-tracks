var colors = ["blue", "orange", "purple", "pink"];
var names = ["Ed", "Barnabas", "Highwayman", "Scrimbles"];

colors.push("yellow-ochre");
names.push("Matilda");

var horses = {}

for (var i = 0; i < colors.length; i++){
  horses[names[i]] = colors[i];

}

console.log(horses)