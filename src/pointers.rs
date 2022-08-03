 // Pointers

 pub fn run() {
    let array1 = [-1, -2, -3, -4, -5];
    let array2 = array1;

    println!("{:?}", (array1, array2));

    // With non-primitives, if you assign another variable to a piece of data, the first variable will no longer hold that data. You'll need to use a reference (&) to the data to access it.
    let vec1 = vec![-1, -2, -3, -4, -5];
    let vec2 = &vec1; // must use reference to access data

    // Must use a reference to access the data since data has moved
    println!("{:?}", (&vec1, vec2));
 }