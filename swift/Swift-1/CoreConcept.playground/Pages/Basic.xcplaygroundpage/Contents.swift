import UIKit

var str = "Hello, playground"
str = "Hi!"

var currentValue = 50
var targetValue = 55

var difference = currentValue - targetValue

if difference < 0 {
    difference *= -1
}

print(difference)
