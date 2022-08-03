
// Traditional struct
struct Colour {
    red: u8,
    green: u8,
    blue: u8,
}

struct Actor {
    first_name: String,
    last_name: String
}

// Implements Actor
impl Actor {
    // Constructor
    fn new(first: &str, last: &str) -> Actor {
        Actor {
            first_name: first.to_string(),
            last_name: last.to_string()
        }
    }

    // Get full name
     // &self is a reference to the struct
    fn get_full_name(&self) -> String {
        format!("{} {}", self.first_name, self.last_name)
    }

    // Set last name
    fn set_last_name(&mut self, last: &str) {
        self.last_name = last.to_string();
    }

    // Name as tuple
    fn name_as_tuple(self) -> (String, String) {
        (self.first_name, self.last_name)
    }
}

// Tuple struct
struct TupleColour(u8, u8, u8);

pub fn run() {
    let mut c = Colour {
        red: 255,
        green: 255,
        blue: 255
    };

    c.red = 100; // accessed with property name

    println!("#{:x}{:x}{:x}", c.red, c.green, c.blue);

    let mut tup = TupleColour(255, 0, 255);

    tup.0 = 100; // accessed with index
    
    println!("#{:x}{:x}{:x}", tup.1, tup.2, tup.2);

    let mut actor = Actor::new("John", "Doe");
    println!("{} {}", actor.first_name, actor.last_name);
    println!("{}", actor.get_full_name());

    actor.set_last_name("Smith");
    println!("{}", actor.get_full_name());

    let (first, last) = actor.name_as_tuple();
    println!("{} {}", first, last);
}