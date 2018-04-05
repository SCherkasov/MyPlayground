//: Playground - noun: a place where people can play

import UIKit

protocol Shape {
    
    var area: Float { get }
    var perimeter: Float { get }
}

class Circle: Shape {

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
    
    private var radius: Float
    
    init(radius: Float) {
        self.radius = radius
    }
}

class Rectangle: Shape {
    
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
    
    internal var height: Float
    internal var width: Float
    
    init(height: Float, width: Float) {
        self.height = height
        self.width = width
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

var rectangleArea = Rectangle(height: 12, width: 5)
rectangleArea.area
var rectanglePerimeter = Rectangle(height: 10, width: 3)
rectanglePerimeter.perimeter

//assert to Rectangle
let width: Float = 5
assert(Rectangle(height: height, width: width).area == height * width)
assert(Rectangle(height: height, width: width).perimeter == 2 * (height + width))
