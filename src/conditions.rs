pub fn run() {
    let age = 18;
    let checK_id = false;
    let knows_is_of_age = true;

    // If, else if, else
    if age >= 21 && checK_id || knows_is_of_age {
        println!("You can drink in America!");
    } else if age >= 18 && checK_id {
        println!("You can vote everywhere else but not in America and vote!");
    } else {
        println!("You need to be at least 18 to drink!");
    }

    // Shorthand
    let is_of_age = if age >= 18 { true } else { false };
    println!("Is of age: {}", is_of_age);
}