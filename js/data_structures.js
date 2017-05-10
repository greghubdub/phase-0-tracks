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