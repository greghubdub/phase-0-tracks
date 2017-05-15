// function that takes an array of words or phrases and returns the longest word or phrase
// loop through array getting length of each element. Return largets amount

var veggies = ['arugula', 'kale', 'cucumber', 'carrot'];
var buildings = ['Willis Tower', 'John Hancock building', 'City Hall']



function LongWord(arr) {
	var longestWord = arr.sort(function (a, b) { return b.length - a.length; })[0];
	console.log(longestWord)
}


LongWord(veggies)
LongWord(buildings)