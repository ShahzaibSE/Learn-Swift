//: Playground - noun: a place where people can play

//import Cocoa

//var str = "Hello, playground"

// Task: Calculating area and perimeter of triangle.

enum ShapeDimension{
    
    // Enum case with associated value
    case square(Double)
    case rectangle(Double,Double)
    case triangle(Double, Double, Double)
    
    // Enum function which use associated values
    func area()->Double{
        switch self{
        case let .square(side):
            return side * side
        case let .rectangle(width, height):
            return width * height
        case let .triangle(base, height, hyp):
            return (base * height) / 2
        }
    }
    
    func perimeters() -> Double{
        switch self {
        case let .square(side):
            return 4*side
        case let .rectangle(width, height):
            return 2*(width * height)
        case let .triangle(base, height, hyp):
            return base + height + hyp
        }
    }
    
}

var square = ShapeDimension.square(4)
//print("Square area: \(square)")
print("Square area: \(square.area())")

var rectangle = ShapeDimension.rectangle(5.3, 3)
//print("Rectangle area: \(rectangle)");
print("Rectangle area: \(rectangle.area())")

var triangle = ShapeDimension.triangle(4.7, 6.2, 7)
//print("Triangle area: \(triangle)");
print("Triangle area: \(triangle.area())")

// Computing perimeter.
print();
print("Computing perimeter of all shapes")
var triangle_perimeter = triangle.perimeters()
print("Triangle perimeter: \(triangle_perimeter)")
// Square Perimeter
var square_perimeter = square.perimeters()
print("Square perimeter: \(square_perimeter)")
// Rectangle Perimeter
var rectangle_perimeter  = rectangle.perimeters()
print("Rectangle perimeter: \(rectangle_perimeter)")


