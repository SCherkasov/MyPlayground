//: Playground - noun: a place where people can play

import UIKit

class Shape {
    
    func area() -> Float {
        return 0
    }
    
    func perimeter() -> Float {
        return 0
    }
}

class Circle: Shape {
    
    private var radius: Float = 8.0
    
    override func area() -> Float {
        return Float.pi * pow(radius, 2)
    }
    
    override func perimeter() -> Float {
        return Float.pi * (2 * radius)
    }
}

class Squere: Shape {
    
    private var part: Float = 8.0
    
    override func area() -> Float {
        return part * part
    }
    
    override func perimeter() -> Float {
        return 4 * part
    }
}

class Rectangle: Shape {
    private var height: Float = 5.0
    private var width: Float = 8.0
    
    override func area() -> Float {
        return height * width
    }
    
    override func perimeter() -> Float {
        return 2 * (height + width)
    }
}

var circleArea = Circle()
circleArea.area()
var circlePerimeter = Circle()
circlePerimeter.perimeter()

var squereArea = Squere()
squereArea.area()
var squerePerimeter = Squere()
squerePerimeter.perimeter()

var rectangleArea = Rectangle()
rectangleArea.area()
var rectanglePerimetr = Rectangle()
rectanglePerimetr.perimeter()

