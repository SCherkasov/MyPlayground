//: Playground - noun: a place where people can play

import UIKit

protocol Shape {
    
    func area() -> Float
    func perimeter() -> Float
}

class Circle: Shape {
    
    private var radius: Float = 10.0
    
    func area() -> Float {
        return Float.pi * pow(radius, 2)
    }
    
    func perimeter() -> Float {
        return Float.pi * (2 * radius)
    }
}

class Squere: Shape {
    
    private var part: Float = 8.0
    
    func area() -> Float {
        return part * part
    }
    
    func perimeter() -> Float {
        return 4 * part
    }
}

class Rectangle: Shape {
    
    private var height: Float = 12.0
    private var width: Float = 9.0
    
    func area() -> Float {
        return height * width
    }
    
    func perimeter() -> Float {
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
var rectanglePerimeter = Rectangle()
rectanglePerimeter.perimeter()
