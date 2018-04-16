//: Playground - noun: a place where people can play

import UIKit
import Foundation

protocol Shape: NSCopying {
    var area: Double { get }
    var perimeter: Double { get }
}

class Circle: NSObject, Shape {

    var radius: Double
    
    var area: Double {
        get {
            return Double.pi * pow(self.radius, 2)
        }
    }
    
   var perimeter: Double {
        get {
            return Double.pi * (2 * self.radius)
        }
    }
    
    init(radius: Double) {
        self.radius = radius
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        return Circle(radius: self.radius)
    }
}

class Rectangle: Shape {
    
    var width: Double
    var height: Double
    
    var area: Double {
        get {
            return self.height * self.width
        }
    }
    
    var perimeter: Double {
        get {
            return 2 * (self.height + self.width)
        }
    }
    
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        return Rectangle(width: self.width, height: self.height)
    }
}

class Squere: Rectangle {
    var color: UIColor
    
    private var side: Double {
        get {
            return super.height
        }
        set {
            super.height = side
            super.width = side
        }
    }
    
    init(side: Double, color: UIColor) {
        self.color = color
        super.init(width: side, height: side)
    }
    
    override func copy(with zone: NSZone?) -> Any {
        let square  = super.copy(with: zone) as! Squere
        square.color = self.color
        
        return square
    }
}

let delta = Double(0.000001)

// Test for circle area
assert(abs(Circle(radius: 12).area - (pow(12, 2) * Double.pi)) < delta)

// Test for circle perimeter
assert(abs(Circle(radius: 5).perimeter - 2 * 5 * Double.pi) < delta)

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
assert(rect !== (rect.copy() as! Rectangle))
assert(rect.width == (rect.copy() as! Rectangle).width)
assert(rect.height == (rect.copy() as! Rectangle).height)

