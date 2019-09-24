//: [Previous](@previous)

import Foundation

let number = 5
//let number = Int.max
let numberDescription: String

switch number {
case 0:
    numberDescription = "Zero"
case 1...9:
    numberDescription = "Between 1 and 9"
case let negativeNumber where negativeNumber < 0:
    numberDescription = "Negative"
case _ where number > .max / 2:
    numberDescription = "Very large!"
default:
    numberDescription = "No Description"
}


// Swich on an expression
let numberIsEven: Bool

switch number % 2 {
case 0:
    numberIsEven = true
default:
    numberIsEven = false
}

// Multiple case
let animalString = "Elephant"
let isHousePet: Bool

switch animalString {
case "Dog", "Cat", "Hamster":
    isHousePet = true
default:
    isHousePet = false
}

// Switch with tuple
//let coordinates = (0.0, 0.0)
//let coordinates = (5.0, 0.0)
//let coordinates = (0.0, 10.0)
//let coordinates = (7.0, 13.0)
let coordinates = (2.0, 2.0)
let pointCategory: String

switch coordinates {
case (0,0):
    pointCategory = "Origin"
case (let x, 0):
    pointCategory = "On the x-axis at \(x)"
case (0, let y):
    pointCategory = "On the y-axis at \(y)"
//case (_, let y) wehre coordinates.0 == y:
case _ where coordinates.0 == coordinates.1:
    pointCategory = "Along y = x"
case let (x, y) where y == x * x:
    pointCategory = "Along y = x ^ 2"
case let (x, y):
    pointCategory = "No zero coordinates. x = \(x), y = \(y)"
default:
    break
}

//: [Next](@next)
