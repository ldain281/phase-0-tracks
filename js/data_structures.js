// Worked with Len Dain, Matt Mayerle

//var color = ["red", "blue", "green", "yellow"];
//var name = ["Ed", "George", "Linda", "Maria"];

//color.push("orange");

//name.push("Bob");

//var horse = {color: "blue", name: "Linda"};

//console.log("our horse is" + horse)

//---Release 2---
//Horses are great, but times are a-changin', and we need to add an option for faster transportation that we can create with an 
//assembly line. At the bottom of your data_structures.js file, write a constructor function for a car. Give it a few 
//different properties of various data types, including at least one function. Demonstrate that your function works by 
//creating a few cars with it.

var color = ["red", "black", "yellow", "blue"]
var make = ["fiat", "ford", "gmc", "bmw"]
var isManual = true
var serialnumber = 2

function Car(color, make, isManual, serialnumber) {

    console.log("Our new car:", this);

    this.color = color;
    this.make = make;
    this.isManual = isManual;
    this.serialnumber = 2;

    this.honk = function() {console.log("Beep! Beep!"); };
    console.log("Car initialization complete");
}

var anotherCar = new Car("red", "ford", true, 2);
console.log(anotherCar);
console.log("This new car has a cool horn!");
anotherCar.honk();
console.log("-------------");

var yetanotherCar = new Car("black", "gmc", true, 2);
console.log(yetanotherCar.make);
console.log("This new car is has a cool horn!");
yetanotherCar.honk();
console.log("-------------");

//--------Release 3---------