// Write a function that takes a string as a parameter and reverses it.

// Take each character of the string.
// Print each letter of the string starting with the highest index
// working my way to the lowest index.

function reverse(str) {
	console.log(str.charAt(str.length - 1));
	console.log(str.charAt(str.length - 2));
	console.log(str.charAt(str.length - 3));
	console.log(str.charAt(str.length - 4));
	console.log(str.charAt(str.length - 5));
}
reverse("abcde");