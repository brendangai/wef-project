function optionClicked() {
    let userPicked = document.getElementById("list").value;
    var div = document.getElementById("div");
    if (userPicked == 'one') {
        div.innerHTML = "You clicked option 1";
    } else if (userPicked == 'two') {
        div.innerHTML = "You clicked option 2.";
    } else if (userPicked == 'three') {
        div.innerHTML = "You clicked option 3.";
    } else {
        alert("You must pick an option.");
    }
}