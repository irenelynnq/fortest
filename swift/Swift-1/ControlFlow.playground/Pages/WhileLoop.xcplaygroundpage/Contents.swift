//: [Previous](@previous)

import Foundation

var i = 1
//var i = 10

while i < 10 {
    print(i)
    i += 1
}

print("--- --- ---")

i = 1
//i = 10
repeat {
    print(i)
    if i == 5 {
        break
    }
    i += 1
} while i < 10

print("--- --- ---")

//: [Next](@next)
