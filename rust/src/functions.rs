pub fn run() {
    dialogue("Program.exe", "Hello, world!");

    let x = 5;
    let y = 9;

    // Capture return value of a function in a variable
    let mut sum = add(x, y);
    println!("Sum: {} + {} = {}", x, y, sum);


    // Closures - allows using variables within current scope (n3)
    let n3 = 3;
    let add_nums = |n1: i64, n2: i64| n1 + n2 + n3;
    println!("{}", add_nums(x, y));
}

fn dialogue(name: &str, message: &str) {
    println!("{}: {}", name, message);
}

// No semicolon at the end of the line means return
fn add (n1: i64, n2: i64) -> i64 {
    n1 + n2
}