//: Playground - noun: a place where people can play

import UIKit

protocol Shape: NSCopying {
    var area: Float { get }
    var perimeter: Float { get }
}

class Circle: NSObject, Shape {

    var radius: Float
    
    var area: Float {
        get {
            return Float.pi * pow(self.radius, 2)
        }
    }
    
   var perimeter: Float {
        get {
            return Float.pi * (2 * self.radius)
        }
    }
    
    init(radius: Float) {
        self.radius = radius
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        return Circle(radius: self.radius)
    }
}

class Rectangle: Shape {
    
    var width: Float
    var height: Float
    
    var area: Float {
        get {
            return self.height * self.width
        }
    }
    
    var perimeter: Float {
        get {
            return 2 * (self.height + self.width)
        }
    }
    
    init(width: Float, height: Float) {
        self.width = width
        self.height = height
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        return Rectangle(width: self.width, height: self.height)
    }
}

class Squere: Rectangle {
    var color: UIColor
    
    private var side: Float {
        get {
            return super.height
        }
        set {
            super.height = side
            super.width = side
        }
    }
    
    init(side: Float, color: UIColor) {
        self.color = color
        super.init(width: side, height: side)
    }
    
    override func copy(with zone: NSZone?) -> Any {
        let square  = super.copy(with: zone) as! Squere
        square.color = self.color
        
        return square
    }
}

let delta = Float(pow(10, -9))

// Test for circle area
assert(abs(Circle(radius: 12).area - (pow(12, 2) * Float.pi)) < delta)

// Test for circle perimeter
assert(abs(Circle(radius: 5).perimeter - 2 * 5 * Float.pi) < delta)

// Test for square area
assert(Squere(side: 10, color: .green).area == pow(10, 2))

// Test for square perimeter
assert(Squere(side: 11, color: .blue).perimeter == 11 * 4)

// Test for rectangle area
assert(Rectangle(width: 12, height: 10).area == 12 * 10)

// Test for rectangle perimeter
assert(Rectangle(width: 3, height: 10).perimeter == 2 * (3 + 10))

// Test for copy
let rect = Rectangle(width: 3, height: 10)
assert(rect != (rect.copy() as! Rectangle))
assert(rect.width == (rect.copy() as! Rectangle).width)
assert(rect.height == (rect.copy() as! Rectangle).height)

