// Write a function that takes an array of words or phrases and 
// returns the longest word or phrase in the array.
// 1) Find the length of each word in the array.
// 2) Put those integers in a separate array.
// 3) Print the word in the original array that is at the same index
//     as the highest number in the second array.
// ** Use "example string".length *
var array1 = ["thought", "inclination", "tree", "apple"];
var array2 = [];
var names = ["Joe", "Katherine", "Sally", "Li"];

function longest(arr) {
	for (var i = 0; i < arr.length; i++) {
		array2.push(arr[i].length);
		var biggest = array2[0];
		if(array2[i] > biggest) {
        	biggest = array2[i];
        	console.log(arr[array2.indexOf(biggest)]);
		} else {
			null	
		}
	}
}
longest(array1);
longest(names);

// ------------------------------------------------

var employee1 = {name: 'Kevin', age: 25, job: 'engineer'};
var employee2 = {name: 'Kevin', age: 31, job: 'chemist'};

function similar(obj1, obj2) {
	if(obj1['name'] == obj2['name']) {
		similarities = true;
		console.log("true");
	} else {
		similarities = false;
		console.log("false");
	}
	if(obj1['age'] == obj2['age']) {
		similarities = true;
		console.log("true");
	} else {
		similarities = false;
		console.log("false");
	}
	if(obj1['job'] == obj2['job']) {
		similarities = true;
		console.log("true");
	} else {
		similarities = false;
		console.log("false");
	}
}

similar(employee1, employee2);

// ------------------------------------------------


function generate(integer) {
	array3 = []
	for (var i = 0; i < integer; i++) {
		var randomstring = require("randomstring");
		array1.push(randomstring.generate(i * 3));
	}
	console.log(array3);
}
generate(3);


