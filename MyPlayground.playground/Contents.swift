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
            super.height = side; super.width = side
        }
    }
    
    init(side: Float) {
        super.init(height: side, width: side)
        self.side = side
    }
}

var circleArea = Circle(radius: 12)
circleArea.area
var circlePerimeter = Circle(radius: 5)
circlePerimeter.perimeter

var squereArea = Squere(side: 10)
squereArea.area
var squerePerimeter = Squere(side: 11)
squerePerimeter.perimeter

var rectangleArea = Rectangle(height: 12, width: 5)
rectangleArea.area
var rectanglePerimeter = Rectangle(height: 10, width: 3)
rectanglePerimeter.perimeter
