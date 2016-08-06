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