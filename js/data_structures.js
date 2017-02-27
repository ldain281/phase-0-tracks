// array of four colors
//Release 0
var colors = ["blue", "red", "orange", "green"];
var name = ["Ed", "Secratariat", "Black Beauty", "Horse with no name"];
colors.push("white");
name.push("Doratea");

//Release1
function toObject(name, colors) {
  var horses = {};
  for (var i = 0; i < name.length; i++) {
    var horse_name = name[i];
    horses[horse_name] = colors[i]};
};
toObject(name, colors)


//Release2
function Car(color, make, gas_type) {
  console.log("Our new car:", this);
  this.color = color;
  this.make = make;
  this.honk = function() { console.log("Honk!"); };
  this.gas_type = function() {
    if (gas_type == "gasoline") {
      this.gas_type = gas_type;
    }
    else { 
      console.log("That is not a real gas type!")
    }
  }
  console.log("CAR INITIALIZATION COMPLETE");
}
console.log("Let's build a car ...");
// Here is where we call that constructor function
// that we just made ...
var anotherCar = new Car("red", "Ford", "diesel");
console.log(anotherCar);
console.log("Our driver honks the horn:");
anotherCar.honk();
console.log("----");
console.log("Let's build a car ...");
// Here is where we call that constructor function
// that we just made ...
var thirdCar = new Car("black", "Porsche", "gas");
console.log(thirdCar);
console.log("Our driver honks the horn:");
anotherCar.honk();
console.log("----");
console.log("Let's build a car ...");
// Here is where we call that constructor function
// that we just made ...
var fourthCar = new Car("white", "Chevy", "gas");
console.log(fourthCar);
console.log("Our driver honks the horn:");
anotherCar.honk();
console.log("----")