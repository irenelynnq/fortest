//: [Previous](@previous)

import Foundation

let maxStandardHours = 40
let standardRate = 25000
let overtimeRate = 50_000

let hoursWorked = 45
let price: Int

if hoursWorked > maxStandardHours {
    let extraHours = hoursWorked - maxStandardHours
    price = (maxStandardHours * standardRate) + (extraHours * overtimeRate)
} else {
    price = hoursWorked * standardRate
    //print(extraHours)
}

print(price)
//print(extraHours)

//: [Next](@next)
