// Group together values of different types
// Max 12 values

pub fn run() {
    let person: (&str, &str, u8) = ("John", "Doe", 50);

    println!("{}", person.0);
    println!("{}", person.1);
    println!("{}", person.2);
}