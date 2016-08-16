console.log("Is this running?");

// Manipulating DOM in release 0
// function changeColors (){
// 	 var header = document.getElementById("h1");
// 	header.style.color = "blue";
// }

// changeColors();

function changeColors(event){
	event.target.style.color = "blue";
}

// Add Event Listener
var header = document.getElementById("h1");
header.addEventListener("mouseover", changeColors);