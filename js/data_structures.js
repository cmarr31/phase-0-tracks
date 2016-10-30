var colors = ["red", "blue", "green", "yellow"];
var names = ["Joe", "Ryan", "Ted", "John"];

colors.push("orange");
names.push("Philip");

var horses = {};

for (var i = 0; i < names.length; i++) {
	horses[names[i]] = colors[i];
}

console.log(horses);