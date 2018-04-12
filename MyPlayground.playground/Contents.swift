//: Playground - noun: a place where people can play

import UIKit

class Shape: NSObject, NSCopying {
   
    var area: Float
    var perimeter: Float
    
    init(area: Float, perimeter: Float) {
        self.area = area
        self.perimeter = perimeter
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        let copy = Shape(area: area, perimeter: perimeter)
        return copy
    }
}

class Circle: Shape {

    override var area: Float {
        get {
            return Float.pi * pow(self.radius, 2)
        }
        set {
            
        }
    }
    
   override  var perimeter: Float {
        get {
            return Float.pi * (2 * self.radius)
        }
        set {
            
        }
    }
    
    private var radius: Float
    
    init(radius: Float) {
        self.radius = radius
        super.init(area: area, perimeter: perimeter)
    }
}

class Rectangle: Shape {
    
    override var area: Float {
        get {
            return self.height * self.width
        }
        set {
            
        }
    }
    
    override var perimeter: Float {
        get {
            return 2 * (self.height + self.width)
        }
        set {
            
        }
    }
    
    internal var height: Float
    internal var width: Float
    
    init(height: Float, width: Float) {
        self.height = height
        self.width = width
        super.init(area: area, perimeter: perimeter)
    }
}

class Squere: Rectangle {
    
    private var side: Float {
        get {
            return super.height
        }
        set {
            super.height = side
            super.width = side
        }
    }
    
    init(side: Float) {
        super.init(height: side, width: side)
    }
}

var circleArea = Circle(radius: 12)
circleArea.area
var circlePerimeter = Circle(radius: 5)
circlePerimeter.perimeter

//assert to Circle
let delta: Float = pow(10, -9)
let radius: Float = 12
assert(abs(Circle(radius: radius).area - pow(radius, 2) * Float.pi) < delta)
// I don't know how to check perimrter(

var squereArea = Squere(side: 10)
squereArea.area
var squerePerimeter = Squere(side: 11)
squerePerimeter.perimeter

//assert to Squere
let height: Float = 34
assert(Squere(side: height).area == pow(height,  2))
assert(Squere(side: height).perimeter == height * 4)

var rectangleArea = Rectangle(height: 12, width: 12)
rectangleArea.area
var squere = rectangleArea.copy() as! Rectangle
var rectanglePerimeter = Rectangle(height: 10, width: 3)
rectanglePerimeter.perimeter

//assert to Rectangle
let width: Float = 5
assert(Rectangle(height: height, width: width).area == height * width)
assert(Rectangle(height: height, width: width).perimeter == 2 * (height + width))
