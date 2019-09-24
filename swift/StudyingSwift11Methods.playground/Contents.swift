import UIKit

var str = "Hello, playground"

class Counter {
    var count = 0
    func increment() {
        count += 1
    }
    func increment(by amount: Int){
        count += amount
    }
    func reset() {
        count = 0
    }
}
let counter = Counter()
counter.increment()
counter.increment(by: 5)
counter.reset()

struct Point {
    var x = 0.0, y = 0.0
    func isToTheRightOf(x: Double) -> Bool {
        return self.x > x
    }
    mutating func moveBy(x deltaX: Double, y deltaY: Double){
        x += deltaX
        y += deltaY
    }
}
let somePoint1 = Point(x: 4.0, y: 5.0) //assigned
if somePoint1.isToTheRightOf(x: 1.0){
    print("This point is to the right of the line where x == 1.0")
}

var somePoint = Point(x: 1.0, y: 1.0) //assigned 1.0, 1.0
somePoint.moveBy(x: 2.0, y: 3.0) //can change by mutating method
print("The point is now at (\(somePoint.x), \(somePoint.y))")
//you cannot call a mutating method on a constant of structure type, because its properties cannot be changed, even if they are variable properties
var newPoint = Point()
print("New point is at (\(newPoint.x), \(newPoint.y))")
newPoint.x = 2.0
print("New point is at (\(newPoint.x), \(newPoint.y))") //근데 이렇게 해도 바뀌는데...?

struct Point2 {
    var x = 0.0, y = 0.0
    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
        self = Point2(x: x + deltaX, y: y + deltaY)
    }
}

enum TriStateSwitch {
    case off, low, high
    mutating func next() {
        switch self {
        case .off:
            self = .low
        case .low:
            self = .high
        case .high:
            self = .off
        }
    }
}
var ovenLight = TriStateSwitch.low
ovenLight.next()
ovenLight.next()
ovenLight.next()

struct LevelTracker {
    static var highestUnlockedLevel = 1
    var currentLevel = 1
    
    static func unlock(_ level: Int){
        if level > highestUnlockedLevel { highestUnlockedLevel = level }
    }
    
    static func isUnlocked(_ level: Int) -> Bool {
        return level <= highestUnlockedLevel
    }
    
    @discardableResult
    mutating func advance(to level: Int) -> Bool {
        if LevelTracker.isUnlocked(level) {
            currentLevel = level
            return true
        } else {
            return false
        }
    }
}

class Player {
    var tracker = LevelTracker()
    let playerName: String
    func complete(level: Int){
        LevelTracker.unlock(level + 1)
        tracker.advance(to: level + 1)
    }
    init(name: String){
        playerName = name
    }
}
var player = Player(name: "Argyrios")
player.complete(level: 1)
print("highest unlocked level is now \(LevelTracker.highestUnlockedLevel)")
player = Player(name: "Beto")
if player.tracker.advance(to: 6) {
    print("player is now on level 6")
} else {
    print("level 6 has not yet been unlocked")
}
