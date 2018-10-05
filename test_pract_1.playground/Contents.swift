//: Playground - noun: a place where people can play

//import Cocoa
import Dispatch

var str = "Hello, playground"

// Student Bio
var firstname: String = "Shahzaib"
// -- Optional -- //
//var middlename: String? = nil   //This will generate an error, this means there has to be an optional value, let's go to the best case.
//var middlename: String! = nil  // This is implicitly unwrapped.
var middlename: String! = "Chaudary"
// --- Optional -- //
var lastname: String = "Noor"

// When you don't get an optional.
//print("Student's middlename \(middlename!)")  // Forceful/Explicit optional unwrapping.
print("Middle Name: \(middlename)")


// --- Lab tasks - 30/September/2018  --- //

//1. Create a two functions
//isUserExist(name: String) -> Bool
//getData(isUserExist) -> String
//isUserExist should check name, if name is not empty then return true while getData should take isUserExist in parameter and return String of “login successful” OR “login failed”

func isUserExist(name: String) -> Bool{
    if (name != "") {
        return true
    } else {
        return false
    }
}

func getData(isUser: Bool) -> String{
    if (isUser == true) {
        return "Login Successful"
    } else {
        return "Login Failed"
    }
}

let response = getData(isUser: isUserExist(name: "shahzaib@gmail.com"))
print("Check user: \(response)")
print()
//func getData(isUser: Bool) -> String{    // Unable to return value.
//    if (isUser == true) {
//      return "Login Successful"
//    } else if (isUser != false) {
//      return "Login Failed"
//    }
//}

//Task #2.
//i) Write an enum of Course having three cases "web, android and iOS".
//ii) Write dictionary which have student names in key and Course(ENUM) in value. add 3 to 4 student records.
//Example:
//[“ali”: Course.web, “raza”: Course.android, “noman”: Course.iOS]
//
//iii) Write a function which will take dictionary in parameter and return tuple of iOS, android and web student names.
//Tuple:
//([String],[String],[String])

enum Course {
    case web
    case iOS
    case android
}

var course_web = Course.web
var course_android = Course.android
var course_iOS = Course.iOS
print(course_web)

// Dictionaries initialization order doesn't match, we can find out by iterating over a dictionary.

var student: Dictionary<String,Course> = ["Shahzaib" : Course.web, "John": Course.android, "Alex": Course.iOS, "Lenny": Course.web, "Annie": Course.iOS]
print(student["Shahzaib"])   // Get optional name

func dicttoTupleData(dict: Dictionary<String,Course>) -> ([String],[String],[String]){
    var iosStudents = Array<String> ()
    var androidStudents: Array<String> = []
//    var webStudents = []
    var webStudents = Array<String>(["Shaheen"])
    for (student_key, _) in dict {
        if (dict[student_key] == Course.android) {
            androidStudents.append(student_key)
        } else if (dict[student_key] == Course.iOS) {
            iosStudents.append(student_key)
        } else if (dict[student_key] == Course.web){
            webStudents.append(student_key)
        }
    }
    
    return (iosStudents,androidStudents,webStudents)
}

var students = dicttoTupleData(dict: student)
print("Students: \(students)")

//for (key,_) in student {
//    print("\(key)")
//}

//for

//Task #3. What is self-keyword. Give example by using class and struct. You can create User Objects for both class and struct.

//var strlist = []

// ================ //
// ---- Custom Operators ------ //

// post fix operator.
postfix operator ++++

func _dicttoTupleData(dict: Dictionary<String,Course>) -> (String, String, String) {
    return ("s1", "student2", "student3")
}

postfix func ++++ (val: Int) -> Int{
    return val + 2
}

var operator_test_val = 1
operator_test_val = operator_test_val++++
print("Custom operator result: \(operator_test_val)")

// =============== //
// ---- Enumeration ---- //
enum Direction: Int {
    case east
    case west
    case north
    case south
}

print("East: \(Direction.east.rawValue)")   // Converted from enum to rawValue.
print("East: \(Direction.east)")

// Converting raw value to enum type.
let rawValue = 0
let rawValue2 = 10
if let direction = Direction(rawValue: rawValue) {
    print("Success Conversion, Direction: \(direction)")
} else {
    print("Failed Conversion")
}


enum textAlignment {
    case option
    case left
    case right
    case center
    case justify
    
    func alignText(option: String)-> Any {
        switch option {
        case "left":
            return textAlignment.left
        case "right":
            return textAlignment.right
        case "center":
            return textAlignment.center
        case "justify":
            return textAlignment.justify
        default:
            return "No option selected"
        }
    }
    
    func test() {
        print("Enum method Invoked")
    }
}
var whichOption = textAlignment.option
var someAlignment = textAlignment.option.alignText(option: "right")
print("Text Alignment Option: \(whichOption)")
//print(textAlignment.left.rawValue)

enum LightBulb{
    case on
    case off

    func surfaceTemperature(ambient:Double)->Double {
        switch self{
        case .on: return ambient + 150

        case .off:
            return ambient
        }
    }

    mutating func toggle(){
        switch self{
        case .on:
            self = .off
            print("Bulb enum, Hash Value: \(self.hashValue)")
        case .off:
            self = .on
        }
    }
}

var bulb = LightBulb.on
bulb.toggle()
let surfaceTemperatureOld = bulb.surfaceTemperature(ambient:30)
print("Bulb's old state: \(surfaceTemperatureOld)")
// Turning on the bulb
sleep(3)
bulb.toggle()
let surfaceTemperature = bulb.surfaceTemperature(ambient:30)
print("Bulb's current state: \(surfaceTemperature)")

// Associate value enemuration.
enum ShapeDimension {
    case square(side: Double)
    case rectangle(width: Double, height: Double)
    
    mutating func area () -> Double {
        switch self {
        case let .square(side: s):
            return s * s
        case let .rectangle(width: w, height: h):
            return w * h
        }
    }
}

var square = ShapeDimension.square(side: 4)
var square_area = square.area()
print("Area: \(square_area)")
//print(self)

// Structure - In progress
struct Student {
    var name: String
    var age: Int
    
    func createBio(name: String, age: Int) -> Dictionary<String, String>{
        return ["name":name, "age":String(age)]
    }
}
