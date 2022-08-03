// Vars can be primitive types or references to other variables.
// Immutability is enforced by the compiler.
// Rush uses block-scoped variables.

pub fn run() {
    let name = "Az";
    let mut age = 18; // Mutable

    println!("My name is {} and I'm {}", name, age);

    age = 19;

    println!("My name is {} and I'm {}", name, age);

    // Constants
    // Forced to specify type
    const ID: i32 = 001;
    println!("ID: {}", ID);

    // Assign several variables at once
    let (my_name, my_age) = ("Az", 19);
    println!("{} is {}", my_name, my_age);
}