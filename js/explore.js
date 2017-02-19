//7.1 Release4
//create a function that reverses a string
//split sting into array of separate letters,
//reverse array
//join reversed array and declare a variable
//return reversed string
//test with drive code
//add conditional statment as per instuctions
function reverseS(str) {
var array = str.split("");
array.reverse();
var newrString = array.join("");
return newrString;

}


if (1 == 1) {
	console.log(reverseS("cats"));	} 
else {console.log("dogs");
}