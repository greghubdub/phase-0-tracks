// LongWord
// function that takes an array of words or phrases and returns the longest word or phrase
// loop through array getting length of each element. Return largets amount

// PairShare
// check 2 objects for whether they share at least one key-value pair
// loop through object 1 checking for match with EACH pair in object 2 (loop within loop?)

// RandomStrings
// Put random string of random number of characters into array
// Run LongWord on the array

function LongWord(arr) {
	var longestWord = arr.sort(function (a, b) { return b.length - a.length; })[0];
	console.log(longestWord)
}

var veggies = ['arugula', 'kale', 'cucumber', 'carrot'];
var buildings = ['Willis Tower', 'John Hancock Building', 'City Hall']

LongWord(veggies);
LongWord(buildings);




function PairShare(first, second) {
	for (var key in first) {
		if (second.hasOwnProperty(key)) && (first[key] == second[key]) {
			return true
		}
	}
}

var dudes = {"Jeff":25, "Bob":29, "Rick": 32};
var bros = {"Greg":30, "Jeff":25, "Paul": 27};

PairShare(dudes, bros);



function RandomStrings(length) {
	
}
