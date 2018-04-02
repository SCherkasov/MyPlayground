//: Playground - noun: a place where people can play

import UIKit

protocol Shape {
    
    func area() -> Float
    func perimeter() -> Float
}

class Circle: Shape {
    
    private var radius: Float
    
    init(radius: Float) {
        self.radius = radius
    }
    
    func area() -> Float {
        return Float.pi * pow(radius, 2)
    }
    
    func perimeter() -> Float {
        return Float.pi * (2 * radius)
    }
}

class Rectangle: Shape {
    
    private var height: Float
    private var width: Float
    
    init(height: Float, width: Float) {
        self.height = height
        self.width = width
    }
    
    func area() -> Float {
        return height * width
    }
    
    func perimeter() -> Float {
        return 2 * (height + width)
    }
}

class Squere: Rectangle {
    
    private var side: Float
    
    init(side: Float) {
        super.init(height: side, width: side)
        self.side = side
        
    }
    
    override func area() -> Float {
        return pow(side, 2)
    }
    
    override func perimeter() -> Float {
        return 4 * side
    }
}

var circleArea = Circle(radius: 12)
circleArea.area()
var circlePerimeter = Circle(radius: 5)
circlePerimeter.perimeter()

var squereArea = Squere(side: 34)
squereArea.area()
var squerePerimeter = Squere(side: 11)
squerePerimeter.perimeter()

var rectangleArea = Rectangle(height: 12, width: 5)
rectangleArea.area()
var rectanglePerimeter = Rectangle(height: 10, width: 3)
rectanglePerimeter.perimeter()
