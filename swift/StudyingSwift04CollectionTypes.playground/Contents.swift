import UIKit

var str = "Hello, playground"

var threeDoubles = Array(repeating: 0.0, count: 3)
var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
var sicDoubles = threeDoubles + anotherThreeDoubles

var shoppingList = ["Eggs", "Milk"]
print("The shopping list contains \(shoppingList.count) items.")
if shoppingList.isEmpty {
    print("The shopping list is empty.")
} else {
    print("We have to go shopping.")
}
shoppingList.append("Flour")
shoppingList += ["Baking Powder"]
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
var firstItem = shoppingList[0]
shoppingList[0] = "Six eggs"
shoppingList[4...6] = ["Bananas", "Apples"]
shoppingList.insert("Maple Syrup", at: 0)
let whatwasfirst = shoppingList.remove(at: 0)
firstItem = shoppingList[0]

for item in shoppingList {
    print(item)
}

for (index, value) in shoppingList.enumerated(){
    print("Item \(index + 1): \(value)")
}

var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]
favoriteGenres.insert("Jazz")
if let removedGenre = favoriteGenres.remove("Rock"){ //remove실패 시 nil
    print("\(removedGenre)? I'm over it.")
} else {
    print("I never much cared for that.")
}
if favoriteGenres.contains("Funk"){
    print("I get up on the good foot.")
} else {
    print("It's too funky in here.")
}
for genre in favoriteGenres.sorted() {
    print("\(genre)")
}

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]
oddDigits.union(evenDigits).sorted()
oddDigits.intersection(evenDigits).sorted()
oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()

let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]
houseAnimals.isSubset(of: farmAnimals)
farmAnimals.isSuperset(of: houseAnimals)
farmAnimals.isDisjoint(with: cityAnimals)

var namesOfIntegers = [Int: String]() //Dictionary<Key, Value>
namesOfIntegers[16] = "sixteen"
namesOfIntegers = [:] //empty

var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
airports.count
airports["LHR"] = "London"
airports["LHR"] = "London Heathrow"
if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB"){
    print("The old value for DUB was \(oldValue).")
}
if let airportName = airports["DUB"] {
    print("The name of the airport is \(airportName).")
} else {
    print("That airport is not in the airports dictionary.")
}
airports["APL"] = "Apple International"
airports["APL"] = nil //remove
if let removedValue = airports.removeValue(forKey: "DUB") {
    print("The removed airport's name is \(removedValue).")
} else {
    print("The airports dictionary does not contain a value for the key.")
}

for(airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}
for airportCode in airports.keys {
    print("Airport code: \(airportCode)")
}
for airportName in airports.values {
    print("Airport name: \(airportName)")
}
let airportCodes = [String](airports.keys) //array로 바꿔줌
let airportNames = [String](airports.values)

for values in airportNames {
    print(values)
}
