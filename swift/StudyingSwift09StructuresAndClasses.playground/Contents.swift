import UIKit

var str = "Hello, playground"
struct Resolution {
    var width = 0
    var height = 0
}
class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

let someResolution = Resolution()
let someVideoMode = VideoMode()
print(someResolution.width)
print(someVideoMode.resolution.width)
someVideoMode.resolution.width = 1280
print(someVideoMode.resolution.width)
let vga = Resolution(width: 640, height: 480)

//A value type is a type whose value is copied when it’s assigned to a variable or constant, or when it’s passed to a function.
//Structures and Enumerations Are Value Types

let hd = Resolution(width: 1920, height: 1080)
var cinema = hd
print("cinema has \(cinema.width) width")
cinema.width = 2048
print("cinema has \(cinema.width) width")
print("hd has \(hd.width) width")

//Unlike value types, reference types are not copied when they are assigned to a variable or constant, or when they are passed to a function. Rather than a copy, a reference to the same existing instance is used.
//Classes Are Reference Types
let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

print("tenEighty has \(tenEighty.frameRate) frameRate")

let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0
print("tenEighty has \(tenEighty.frameRate) frameRate")

/*
 Note that tenEighty and alsoTenEighty are declared as constants, rather than variables.
 However, you can still change tenEighty.frameRate and alsoTenEighty.frameRate because the values of the tenEighty and alsoTenEighty constants themselves don’t actually change.
 tenEighty and alsoTenEighty themselves don’t “store” the VideoMode instance—instead, they both refer to a VideoMode instance behind the scenes.
 It’s the frameRate property of the underlying VideoMode that is changed, not the values of the constant references to that VideoMode.
*/

if tenEighty === alsoTenEighty {
    print("tenEighty and alsoTenEighty refer to the same VideoMode instance.")
}
/*
Note that identical to (represented by three equals signs, or ===) doesn’t mean the same thing as equal to (represented by two equals signs, or ==).
 Identical to means that two constants or variables of class type refer to exactly the same class instance.
 Equal to means that two instances are considered equal or equivalent in value, for some appropriate meaning of equal, as defined by the type’s designer.
 */


