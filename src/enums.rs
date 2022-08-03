enum Directions {
    Up,
    Down,
    Left,
    Right,
}

fn translate_avatar(dir: Directions) {
    // Match acts like a switch statement
    match dir {
        Directions::Up => println!("Avatar is moving up"),
        Directions::Down => println!("Avatar is moving down"),
        Directions::Left => println!("Avatar is moving left"),
        Directions::Right => println!("Avatar is moving right")

    }
}

pub fn run() {
    let (av1, av2, av3, av4) = (Directions::Up, Directions::Down, Directions::Left, Directions::Right);

    translate_avatar(av1);
    translate_avatar(av2);
    translate_avatar(av3);
    translate_avatar(av4);
}