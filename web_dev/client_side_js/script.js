console.log("The script is running!");

function addBorder(event) {
	event.target.style.border = "2px solid black";
}

var photo = document.getElementById("yin-yang");
photo.addEventListener("click", addBorder);
