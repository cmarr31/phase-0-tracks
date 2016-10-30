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

function Car(name, age, reliable) {
	this.name = name;
	this.age = age;
	this.reliable = reliable;

	this.drive = function() {
		console.log("You enter the car and drive off.");
	};
}

var my_car = new Car("Agnis", 4, true);
console.log(my_car);
console.log("I can drive my car...");
my_car.drive();

var someone_elses_car = new Car("Beth", 1, true);
console.log("I shouldnt, but I can drive someone else's car!");
someone_elses_car.drive();