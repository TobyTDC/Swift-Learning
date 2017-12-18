
// Value semantics --- struct

struct Point {
    var x: Double
    var y: Double
    
    mutating func moveLeft(steps: Double){ // mutating keyword allow the function to make a copy under the hood
        x -= steps
    }
}

var p1 = Point(x: 1, y: 2)
var p2 = p1 // make a copy

p1.x = 4
p2.x

let p3 = Point(x: 2, y: 4)
// p3.x = 4 will not compile

struct AnotherPoint{
    let x: Double
    let y: Double
}

var p4 = AnotherPoint(x: 1, y: 2)


// Reference semantics --- class

class Robot{
    var model: String
    
    init(model: String){
        self.model = model
    }
}


var someRobot = Robot(model: "T1999")
var anotherRobot = someRobot

someRobot.model = "T2000"
anotherRobot.model

let thirdRobot = Robot(model: "T3000")
thirdRobot.model = "T4000" // modified directly by reference

// Mixed semantics

/*struct Point {
    let x: Double
    let y: Double
}*/

struct Size {
    let width: Double
    let height: Double
}

struct Rect {
    let origin: Point
    let size: Size
}

struct Color {
    let red: Double
    let green: Double
    let blue: Double
    let alpha: Double
    
    static var blue: Color {
        return Color(red: 0, green: 0, blue: 1)
    }
    
    static var red: Color {
        return Color(red: 1.0, green: 0, blue: 0)
    }
    
    static var white: Color {
        return Color(red: 0, green: 0, blue: 0)
    }
    
    init(red: Double, green: Double, blue: Double, alpha: Double = 1.0) {
        self.red = red/255.0
        self.green = green/255.0
        self.blue = blue/255.0
        self.alpha = alpha
    }
}

class View {
    var frame: Rect
    var backgroundColor: Color = .white
    
    init(frame: Rect) {
        self.frame = frame
    }
}

struct Shape {
    let view: View
    
    init(x: Double, y: Double, width: Double, height: Double, color: Color) {
        let origin = Point(x: x, y: y)
        let size = Size(width: width, height: height)
        
        let rect = Rect(origin: origin, size: size)
        self.view = View(frame: rect)
        view.backgroundColor = color
    }
}

let square = Shape(x: 0, y: 0, width: 100, height: 100, color: .red)

square.view.backgroundColor = .blue // pitfall no.1


// Type methods - Value Types

import Foundation

struct Map{
    static let origin = Point(x: 0, y: 0)
    
    static func distance(to point: Point) -> Double {
        let horizontalDistance = origin.x - point.x
        let verticalDistance = origin.y - point.y
        
        func square(_ value: Double) -> Double{
            return value * value
        }
        
        return sqrt(square(horizontalDistance) + square(verticalDistance))
    }
}

// Type methods - Reference Types

class Calculator {
    class func squareRoot(_ value: Double) -> Double{
        return sqrt(value)
    }
    
    final class func square(_ value: Double) -> Double{ //final prevents overriding (static dispatch)
        return value * value
    }
    
}

Calculator.squareRoot(64)

class NewtonCalculator : Calculator {
    override class func squareRoot(_ value: Double) -> Double { //dynamic dispatched
        var guess = 1.0
        var newGuess: Double
        
        while true {
            newGuess = (value/guess + guess)/2
            if guess == newGuess{
                return guess
            }
            
            guess = newGuess
        }
    }
}

NewtonCalculator.squareRoot(64)





