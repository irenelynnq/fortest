//: [Previous](@previous)

import Foundation

/*
Write a switch statement that takes an age as an integer and assigns the life stage related to that age, to a String. You can make up the life stages, or use categorization as follows:

0-2 years: Infant
3-12 years: Child
13-19 years: Teenager
20-39 years: Adult
40-60 years: Middle aged
61+ years: Elderly
 */

let lifeStage: String

switch 35 {
case ..<0:
    lifeStage = "Not born yet"
case 0...2:
    lifeStage = "Infant"
case 3...12:
    lifeStage = "Child"
case 13...19:
    lifeStage = "Teenager"
case 20...39:
    lifeStage = "Adult"
case 40...60:
    lifeStage = "Middle aged"
case 61...:
    lifeStage = "Elderly"
case let age:
    fatalError("Unaccounted for age: \(age)")
}

// Write a switch statement that takes a tuple containing a String and an Int. The String is a name, and the Int is an age. Use the same cases that you used above, and binding with let syntax, to assign the name, followed by the life stage, to a String constant. For example, for the author of these challenges, you’d assign “Kali is an middle aged.” to your constant.

let lifeStageForName: String

switch ("Kali", 45) {
case (let name, ..<0):
    lifeStageForName = "\(name) is Not born yet"
case (let name, 0...2):
    lifeStageForName = "\(name) is Infant"
case (let name, 3...12):
    lifeStageForName = "\(name) is Child"
case (let name, 13...19):
    lifeStageForName = "\(name) is Teenager"
case (let name, 20...39):
    lifeStageForName = "\(name) is Adult"
case (let name, 40...60):
    lifeStageForName = "\(name) is Middle aged"
case (let name, 61...):
    lifeStageForName = "\(name) is Elderly"
case let age:
    fatalError("Unaccounted for age: \(age)")
}

//: [Next](@next)
