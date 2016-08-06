var names = ["frank","herpert","rudy","george"];
var colors = ["purple","blue","red","green"];

colors.push("orange");
names.push("hal");

console.log(colors);
console.log(names);

//add code that will use your two arrays to create an object. The keys of your object should be horse names, and the values should be colors.

var horses = {};

for(var i = 0; i < names.length; i++){
 horses[names[i]] = colors[i];
}
console.log(horses);

function Car(make, model, year) {
 this.make = make;
 this.model = model;
 this.year = year;
 this.vroom = function() {
   if (make == "ford") {
     console.log("vrooooom!");
   } else {
     console.log("pptttppptpp ptpptpt");
   }
 }
}

var ford = new Car("ford","mustang", 1987);
console.log(ford);
ford.vroom();

var chevy = new Car("chevy","malibu", 2000);
console.log(chevy);
chevy.vroom();