
// use std::mem; // Avoids writing std everywhere

// Vector is a growable array

pub fn run() {
    // Vector, type and size
    let nums: Vec<i8> = vec![1, 2, 3, 4, 5];

    println!("{:?}", nums);
    println!("{}", nums[0]);
    println!("{}", nums[1]);
    println!("{}", nums[2]);
    println!("{}", nums[3]);
    println!("{}", nums[4]);

    // Mutable Vector - can be modified but not added to
    let mut nums2: [i32; 5] = [1, 2, 3, 4, 5];
    nums2[0] = 10;
    println!("{:?}", nums2);

    // Get Vector length
    println!("{}", nums2.len());

    // Vectors are allocated on the stack
    println!("{}", std::mem::size_of_val(&nums2));

    // Get a slice from an vector
    // 0 to 3
    let slice: &[i32] = &nums2[0..5];
    println!("{:?}", slice);

    // Add value to vector
    let mut nums3: Vec<i8> = vec![1, 2, 3, 4, 5];
    nums3.push(6);
    println!("{:?}", nums3);

    // Remove last value
    nums3.pop();
    println!("{:?}", nums3);

    // Loop through vector
    for x in nums3.iter() {
        println!("Num: {}", x);
    }

    // Loop and mutate vector
    for x in nums3.iter_mut() {
        *x *= 2;
    }
    println!("{:?}", nums3);
}