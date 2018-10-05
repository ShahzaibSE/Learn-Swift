import UIKit
import Foundation

var str = "Hello, playground"

func +(value:Int,value2:String)->Int{
    return value + Int(value2)!
}

var cal = 5 + "5"

var sqrt1 = sqrt(25)
print(sqrt1)
print(pow(5.0, 2.0))

/*
 Prefix
 ++i
 !isEm

 Postfix
 i++
name!
 
 Infix
 
 2 + 3
 
 */

prefix operator √

prefix func √ (value:Double)->Double{
    return sqrt(value)
}

print(√25)

infix operator ^

func ^(lhs:Double,rhs:Double)->Double{
    return pow(lhs, rhs)
}

print(5.0^2.0)


print("\u{64}")

let num:UInt8 = 0b00001010
let num1:UInt8 = 0b00001010
print(~num)

//0b11110101

enum Direction{
    case east
    case west
    case south
    case north
    
    
    mutating func changeDirection(){
        self = .north
    }
}

print(Direction.south)

let direction = Direction.east

switch direction{
case .east:
    print("East")
case .west:
    print("West")
case .north:
    print("North")
case .south:
    print("South")
}

var dics:Dictionary<String,Dictionary<String,String>> = [:]

var dic:[String:String] = [:]

var value:String?

value = "Hello"


if let value = value{
    var value2:String = value
}else{
    print("Value is nil")
}
func check(){
guard let value = value else{
    print("Value is emphty")
    return
}

}

for i in 1...10{
    
    if i == 5{
        break
    }
    print(i)
}

func math(function:@escaping(Double,Double)->Double)->(Double,Double)->Double{
    return function
}

func add(value1:Double,value2:Double)->Double{
    return value1 + value2
}

let function1 = math(function: add)
function1(5,5)

















