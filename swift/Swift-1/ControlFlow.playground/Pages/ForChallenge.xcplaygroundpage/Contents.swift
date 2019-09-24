//: [Previous](@previous)

import Foundation

// Create a constant called range and set it equal to a range starting at 1 and ending with 10 inclusive. Write a for loop which iterates over this range and prints the square of each number.

let range = 1...10

for index in range {
    let square = index * index
    print("\(square)")
}

// The code below iterates over only even rows. Change this to use a where clause on the first for loop to skip even rows instead of using continue.
// Check that the sum is still 448 after your modifications.

var sum = 0
for row in 0..<8 {
    if row % 2 == 0 {
        continue
    }
    for column in 0..<8 {
        sum += row * column
    }
}
sum

sum = 0
for row in 0..<8 where row % 2 != 0 {
    for column in 0..<8 {
        sum += row * column
    }
}
sum == 448

//: [Next](@next)
