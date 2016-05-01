console.log("The script is running!");

function addDottedPinkBorder(event) {

  console.log("clicked!");
  console.log(event);
  event.target.style.border = "3px dotted pink";
}

var pars = document.getElementsByTagName("p");
var par = pars[0];
par.addEventListener("click", addDottedPinkBorder);