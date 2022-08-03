/*
Ints: u8, i8, u16, i16, u32, i32, u64, i64, u128, i128
Floating point numbers: f32, f64
Boolean bool
Characters char
Tuples
Arrays

Underscore for variables
*/

pub fn run() {
    // Default integer is i32
    let x = 1;
    // Default floating point is f64
    let y = 2.5;
    // Default boolean is bool
    let z = true;
    // Default character is char
    let c = 'a';

    // Explicitly specify type
    let t: u64 = 123456789;

    // Max size of u8 is 255
    let max_u8 = std::u8::MAX;
    println!("Max u8 is {}", max_u8);

    // Boolean
    let is_three = 3 == 3;

    // Unicode
    let unicode = '❤';
    let unicode2 = '\u{1F496}';
    println!("Unicode is {} {}", unicode, unicode2);

    println!("{:?}", (x, y, z, c, t, is_three));
}