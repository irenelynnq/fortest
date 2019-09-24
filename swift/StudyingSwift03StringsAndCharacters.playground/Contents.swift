import UIKit

var str = "Hello, playground"

//Strings and Characters
let dollarSign = "\u{24}"
let blackHeart = "\u{2665}"
let sparklingHeart = "\u{1F496}"
print(blackHeart)
print(sparklingHeart)

let esd1 = #"Line1\nLine2"#
let notesd1 = "Line1\nLine2"
print(esd1)
print(notesd1)

var emptyString = ""
var anotherEmptyString = String()
print(emptyString)
if anotherEmptyString.isEmpty {
    print("Nothing")
}

let catCharacters: [Character] = ["C", "a", "t", "!"]
let catString = String(catCharacters)
print(catString)
for character in catString {
    print(character)
}

let string1 = "hello"
let string2 = " there"
var welcome = string1 + string2
var instruction = "look over"
instruction += string2
welcome.append(string2)

print("6 times 7 is \(6*7).")
print(#"6 times 7 is \(6*7)."#)
print(#"6 times 7 is \#(6*7)."#)

let eAcute: Character = "\u{E9}"
let combinedEAcute: Character = "\u{65}\u{301}"

let precomposed: Character = "\u{D55C}"
let decomposed: Character = "\u{1112}\u{1161}\u{11AB}"
let enclosedEAcute: Character = "\u{E9}\u{20DD}"
let USflag: Character = "\u{1F1FA}\u{1F1F8}"
//REGIONAL INDICATOR SYMBOL LETTER U + REGIONAL INDICATOR SYMBOL LETTER S

let greeting = "Guten Tag!"
greeting[greeting.startIndex]
greeting[greeting.index(before: greeting.endIndex)] //endIndex로 찾으려 하면 runtime error
greeting[greeting.index(after: greeting.startIndex)]
let gi = greeting.index(greeting.startIndex, offsetBy: 7)
greeting[gi]

for index in greeting.indices {
    print("\(greeting[index])", terminator: " ")
}

welcome = "hello"
welcome.insert("!", at: welcome.endIndex)
welcome.insert(contentsOf:" there", at: welcome.index(before: welcome.endIndex))

welcome.remove(at: welcome.index(before: welcome.endIndex))
let range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex
welcome.removeSubrange(range)

let greeting2 = "Hello, world!"
let id = greeting2.firstIndex(of: ",") ?? greeting.endIndex //nil이라면 끝 인덱스
let beginning = greeting2[..<id] //"hello"
let newString = String(beginning)

let eAcuteQuestion = "Voulez-vous un caf\u{E9}?"
let combinedEAcuteQuestion = "Voulez-vous un caf\u{65}\u{301}?"
if eAcuteQuestion == combinedEAcuteQuestion {
    print("These two strings are considered equal")
}

let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
]
var act1SceneCount = 0
for scene in romeoAndJuliet {
    if scene.hasPrefix("Act 1 "){
        act1SceneCount += 1
    }
}
print("There are \(act1SceneCount) scenes in Act 1")
var mansionCount = 0
var cellCount = 0
for scene in romeoAndJuliet{
    if scene.hasSuffix("Capulet's mansion"){
        mansionCount += 1
    } else if scene.hasSuffix("Friar Lawrence's cell"){
        cellCount += 1
    }
}
print("\(mansionCount) mansion scenes; \(cellCount) cell scenes")

let dogString = "Dog\u{203C}\u{1F436}"
for codeUnit in dogString.utf8 {
    print("\(codeUnit) ", terminator: "")
}
print ("")
for codeUnit in dogString.utf16 {
    print("\(codeUnit) ", terminator: "")
}
print("")
for scalar in dogString.unicodeScalars {
    print("\(scalar.value) ", terminator: "")
}
print("")
for scalar in dogString.unicodeScalars {
    print("\(scalar) ")
}
print ("")
