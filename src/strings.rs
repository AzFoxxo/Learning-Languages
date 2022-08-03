// Primitive str = Immutable fixed length
// String = Growable, heap allocated data structure

pub fn run() {
    let fixed = "Hello";
    let mut mutable = String::from("Rust ");

    // Length
    println!("{}", fixed.len());
    println!("{}", mutable.len());

    println!("{}", mutable);

    println!("{}", fixed);
    println!("{}", mutable);

    // Push single char
    mutable.push('!');
    println!("{}", mutable);

    // Push string
    mutable.push_str(" Rust !");
    println!("{}", mutable);

    // Capacity
    println!("{}", mutable.capacity());
    println!("{}", mutable.len());

    // Is empty
    println!("{}", mutable.is_empty());

    // String contains
    println!("{}", mutable.contains("Rust"));

    // Replace
    let text = mutable.replace("Rust", "Az");
    println!("{}", text);

    // Loop through string by whitespace
    for word in text.split_whitespace() {
        println!("{}", word);
    }

    // Create string with capacity
    let mut mutable_with_capacity = String::with_capacity(10);
    println!("{}", mutable_with_capacity);
    mutable_with_capacity.push_str("AAAAAAA");
    println!("{}", mutable_with_capacity);

    // Assertion
    assert_eq!(mutable_with_capacity.len(), 7);
    assert_eq!(mutable_with_capacity.capacity(), 10);

}