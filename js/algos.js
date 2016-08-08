
// Release 0 - Find the Longest Phrase

// Create a function that accepts an array
// Create a variable that stores the longest word
// If the next word in the array is longer than the current word, update the variable to the current word. If not, keep the previous word.
// return the variable containing the longest word.

function longest_word(array) {
	var currentLongest = "";
	for (var i = 0; i < array.length; i++) {
		if (array[i].length > currentLongest.length) {
			currentLongest = array[i];
		}
	}
	console.log(currentLongest)
}


// Release 1 - Find a Key-Value Match

// Create a function that accepts two objects as input
// Compare the two objects to see if they have a key-value pair in common
// If there is a match, return true
// If there is not match, return false

function compareValue(obj1, obj2) {
	if ((obj1.name == obj2.name) || (obj1.age == obj2.age)) {
		console.log(true);
		return true; 
	} else {
		console.log(false);
		return false;
	}
}





// Release 2 - Generate Random Test Data







// DRIVE CODE

// Release 0
longest_word(["long phrase","longest phrase","longer phrase"])
longest_word(["z", "zz", "zzz", "zzzz", "zzzzz", "a"])
longest_word(["five", "three", "two", "four", "one"])


// Release 1

compareValue({name: "Greg", age: 26}, {name:"Tim", age: 26})
compareValue({name: "Bob", age: 50}, {name: "Bob", age: 25})
compareValue({name: "Jeff", age: 12}, {name: "Anthony", age: 24})



// Release 2


