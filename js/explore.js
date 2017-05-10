// Function:
	// takes a string
	// reverses it
// loop thru string backwards? for each character starting with last, index it to a new string
// starting at 0
// OR could loop thru forwards, put to new string starting at -1

// for i equals 4 (top index), until 0, i -= 1
// add original at index 4 to flipped etc

var original = "hello"
var flipped = ''

for (var i = original.length - 1; i >= 0; i--) {
  flipped += original.charAt(i);
}

console.log(flipped);