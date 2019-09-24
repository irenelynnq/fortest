//: [Previous](@previous)

import Foundation

//let coordinates: (Int, Int) = (2, 3)
let coordinates = (2, 3)

let coordinatesDoubles = (2.1, 3.5)

let coordinatesMixed = (2.1, 3)

let x1 = coordinates.0
let y1 = coordinates.1

let coordinatesNamed = (x: 2, y: 3)

let x2 = coordinatesNamed.x
let y2 = coordinatesNamed.y

let coordinates3D = (x: 2, y: 3, z: 1)

let (x3, y3, z3) = coordinates3D
x3
y3
z3

let (x4, y4, _) = coordinates3D
x4
y4
//z4

//: [Next](@next)
