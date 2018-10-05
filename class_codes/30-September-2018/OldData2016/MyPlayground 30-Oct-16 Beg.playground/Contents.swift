//: Playground - noun: a place where people can play

import UIKit
import Foundation

var str = "Hello, playground"


struct Vector {
    var x:Int
    var y:Int
}

var sum = 1+3

func +(left:Vector ,right:Vector)->Vector{
    return Vector(x: left.x + right.x, y: left.y + right.y)
}

var v1 = Vector(x: 10, y: 10)
var v2 = Vector(x: 20, y: 50)

var sumOfVectors = v1 + v2
sumOfVectors.y



//enums

enum Direction:Int{
    case up
    case down
    case right
    case left
}

var robotDirection:Direction = Direction.down
robotDirection.rawValue

var value:Direction? = Direction(rawValue: 7)
value


switch robotDirection {
case Direction.up:
    print("this is up")
case Direction.down:
    print("this is down")
case Direction.left:
    print("this is left")
case Direction.right:
    print("this is right")
}


struct Student {
    var name :String
    var age:Int
    var scholl:String
}

var arrStudent = [Student]()

// this line is for getting url of .plist
let stuPlistUrl:URL? = Bundle.main.url(forResource: "Students", withExtension: ".plist")

//this line get data from url (NSDictionary/NSArray)

//as! (typecast and unwrap)
//as? (typecast and retun optional data type)

let array = NSArray(contentsOf: stuPlistUrl!) as![[String:Any]]

for item in array {

    var Name=""
    var Age=0
    var School=""
    
    
    if let name = item["name"] as? String{
        Name = name
    }
    if let age = item["age"] as? Int{
        Age = age
    }
    if let school = item["school"] as? String{
        School = school
    }
    
    var stu = Student(name: Name, age: Age, scholl: School)
    arrStudent.append(stu)
    
}


for student in arrStudent {
    print(student.name)
    print(student.age)
    print(student.scholl)
    print("---------------------")

}





