pub fn run() {
    // Print to console
    println!("Hello, world!");


    // Simple formatting
    println!("Number: {} + {}", 1, 2);

    // Positional arguments
    println!("{0} {1} {0}", "Hello", "World");

    // Named arguments
    println!("{first} {second} {first}", first = "Hello", second = "World");

    // Placeholder traits
    println!("Binary {:b} Hex: {:x} Octal: {:o}", 69, 69, 69);


    // Place holder for debug trait
    println!("{:?}", (12, true, "hello"));
}