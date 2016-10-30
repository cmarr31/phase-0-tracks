var colors = ["red", "blue", "green", "yellow"];
var names = ["Joe", "Ryan", "Ted", "John"];

colors.push("orange");
names.push("Philip");

var horses = {};

for (var i = 0; i < names.length; i++) {
	horses[names[i]] = colors[i];
}
console.log(horses);

// --------------------------------

var car = {name: 'Agnis', age: 4, reliable: true};

function Car(name, age, reliable) {
	this.name = name;
	this.age = age;
	this.reliable = reliable;

	this.drive = function() {
		console.log("You enter the car and drive off.");
	};
}

