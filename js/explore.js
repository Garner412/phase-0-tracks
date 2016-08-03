
// Create a function that acts on a string in the manner that str.reverse does in Ruby
// To create a reverse of a string we need to take the character at the last index of the inputted string and add it as the first character of a new variable.
// We then need to work backwards until we reach the 0 index of the string adding each variable to the end of the new variable.
// We can then return the new variable as our new reversed string.

function reverse(str) {
	strReversed = "";
	for (var i = str.length - 1; i >= 0; i--)
		strReversed += str[i];
	return strReversed;	
}

console.log(reverse("hello"));
var reversedString = reverse("hello");


if (1==1) {
	console.log(reversedString);
}