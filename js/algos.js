
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


longest_word(["long phrase","longest phrase","longer phrase"])
longest_word(["z", "zz", "zzz", "zzzz", "zzzzz", "a"])
longest_word(["five", "three", "two", "four", "one"])


// Release 1 - Find a Key-Value Match










// Release 2 - Generate Random Test Data


