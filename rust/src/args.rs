pub fn run() {
    // Command args
    let args: Vec<String> = std::env::args().collect();
    let com = args[1].clone(); // get command (clone it)
    
    println!("{:?}", args);
    println!("{:?}", com);

    if com == "hi" {
        println!("Hello, world!");
    } else if com == "bye" {
        println!("Goodbye, world!");
    } else {
        println!("Unknown greeting!");
    }
}