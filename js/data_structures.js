var horseList = {};

var colorsArr = ["turquiose", "aqua", "cerulean", "azure"];
var namesArr = ["Musty", "Misty", "Stallone", "Bob"];

console.log(colorsArr);
console.log(namesArr);

colorsArr.push("indigo");
namesArr.push("Valerie");

console.log(colorsArr);
console.log(namesArr);

for (var i = 0; i < namesArr.length; i++) {
	horseList[namesArr[i]] = colorsArr[i];
}

console.log(horseList);

function Car(make, model, color) {
	console.log("Building a new car")
	this.make = make;
	this.model = model;
	this.color = color;
	this.horn = function() { console.log("Beep beep!"); }

	console.log("Manufacture Complete")
}

var newCar = new Car("Ford", "Focus", "magenta");
console.log(newCar);
console.log("Watch out please!");
newCar.horn();

var anotherNewCar = new Car("Toyota", "Camry", "pink");
console.log(anotherNewCar);
console.log("No YOU watch out");
anotherNewCar.horn();

var yetAnotherCar = new Car("Chevy", "Malibu", "Tangerine");
console.log(yetAnotherCar);
console.log("Plenty of room on the road buddy");
yetAnotherCar.horn();

console.log(Car);