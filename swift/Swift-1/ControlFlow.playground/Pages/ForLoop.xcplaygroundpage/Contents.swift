//: [Previous](@previous)

import Foundation

let usefulConstant = 5

let closedRange = 0...usefulConstant
let halfOpenRange = 0..<usefulConstant

var sum = 0
let count = 10

for index in 1...count {
    sum += index
}

for _ in 0...count {
    print("Hello")
}

for _ in 0...count where count > 100 {
    print("Hello")
}

for i in 1...count where i % 2 == 1 {
    print("\(i) is an odd number.")
}

for floor in 10...15 {
    if floor == 13 {
        print("👻")
        continue
        //break
    }
    print("Stop at Floor \(floor)")
}

print("--- --- ---")

floors: for floor in 12...15 {
    rooms: for room in 11...16 {
        if room == 13 {
            print("👻")
            continue floors
        }
        print("Clean room \(floor)\(room)")
    }
}

//: [Next](@next)
