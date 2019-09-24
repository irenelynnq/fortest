import UIKit

var str = "Hello, playground"
func minMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty { return nil }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}
if let bounds = minMax(array: [8, -6, 2, 109, 3, 71]){
    print("min is \(bounds.min) and max is \(bounds.max)")
}

func greet(person: String, from hometown: String) -> String {
    return "Hello \(person)!  Glad you could visit from \(hometown)."
}
print(greet(person: "Bill", from: "Cupertino"))

func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
print(arithmeticMean(1, 2, 3, 4, 5))
print(arithmeticMean(3, 8.25, 18.75))

func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}
var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")

func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a+b
}
func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
    return a*b
}

var mathFunction: (Int, Int) -> Int = addTwoInts
print(mathFunction(2, 3))
mathFunction = multiplyTwoInts
print(mathFunction(2, 3))

func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int){
    print("Result: \(mathFunction(a, b))")
}
printMathResult(addTwoInts, 3, 5)

func stepForward(_ input: Int) -> Int {
    return input + 1
}
func stepBackward(_ input: Int) -> Int {
    return input - 1
}
func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    return backward ? stepBackward : stepForward
}
var currentValue = 3
let movenearerToZero = chooseStepFunction(backward: currentValue > 0)
print("Counting to zero:")
while currentValue != 0 {
    print("\(currentValue)...")
    currentValue = movenearerToZero(currentValue)
}
print("zero!")
