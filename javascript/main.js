// Single line comment

/*
    Multi-line comment
*/

// Log a message to the console
// For strings, use single or double quotes
console.log("Hello, World!");

// Show a dialogue box with a message
// alert("Hello, World!");

// Declare a variable
let myVar;
myVar = "Hello, World!";
var myVar2 = myVar;

// Define a variable as a constant
const interestRate = 0.3; 
console.log(interestRate);

// Data types

let name = "Az"; // String literal
let age = 19; // Number literal
let isApproved = false; // Boolean literal
let firstName = undefined; // Undefined
let selectedColor = null; // Null (clear value) - object type

// Dynamic typing
let user = "Az";
console.log(typeof user); // string
user = 19;
console.log(typeof user); // number

// Objects
const Az = {
    name: "Az",
    age: 19
};

// Print the object
console.log(Az);

// Dot notation
console.log(Az.name);
console.log(Az.age);

// Bracket notation
// Allows for dynamic access however is not preferred outside of this use case
console.log(Az["name"]);
console.log(Az["age"]);

// If 'Az' was a variable, this would assign .name "Azeria"
// Az.name = "Azeria";

// Arrays
const colours = ["red", "blue", "yellow"];
console.log(colours);

// Access an element
console.log(colours[0]);
console.log(colours[1]);
console.log(colours[2]);

// Append an element
colours[3] = "green";
console.log(colours);

// Add an element
colours.push(0xff0000); // Add a non-string element
console.log(colours);

// Print the length of the array
// Use ` instead of ' or " for string interpolation
console.log(`Length: ${colours.length}`);

// Functions
// use <varname>=<value> to set default values
function salutations(name, lastName="") {
    // Append a space if lastName is not empty
    if (lastName !== "") {
        lastName = " " + lastName;
    }

    console.log(`Hiya, ${name}${lastName}!`);
}

salutations("Az"); // Hiya, Az!
salutations("Az", "Azul"); // Hiya, Az Azeria!
salutations(); // Hiya, undefined! (since default value is undefined)

// Fizzbuzz
function fizzbuzz(input) {
    if (typeof input !== "number") {
        return "Must be a number!";
    }
    if (input % 3 === 0 && input % 5 === 0) {
        return "FizzBuzz";
    }
    if (input % 3 === 0) {
        return "Fizz";
    }
    if (input % 5 === 0) {
        return "Buzz";
    }
    return input;
}

console.log(fizzbuzz(15)); // FizzBuzz
console.log(fizzbuzz(3)); // Fizz
console.log(fizzbuzz(5)); // Buzz
console.log(fizzbuzz(7)); // 7
console.log(fizzbuzz("a")); // Must be a number!