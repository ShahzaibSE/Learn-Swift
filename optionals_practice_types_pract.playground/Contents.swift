//: Playground - noun: a place where people can play

//import Cocoa
//
//var str = "Hello, playground"

var firstname: String = "Shahzaib", _middlename: String? = nil // This will have to be forcely unwrapped
var middlename: String! // This will automatically be unwrapped
//var middlename: String? // This will be forcely unwrapped
//var lastname: String = nil  // Try to set nil to a normal variable results in error.
var lastname: String = "Noor"

func getBioData(){
    guard let _mname = middlename else {
     print("There is no middlename")
     return // Getting out of guard scope is mandatory & cannot use value in guard body.
    }
    print("_mname: \(_mname)")
}
print()
middlename = "Khanzada"
getBioData()
print(middlename)
//print("Middlename \(middlename)")
//
//if let _middlename = middlename, _middlename {
//
//}

if middlename == "Khanzada" {
    print("Middlenames are the same")
}

var optVal: Int! = 1
print(optVal)

// Ways to declare dictionary
var dic1: [String:String];
var dic2: Dictionary<String,[Int]>
var dict3: Dictionary<Int, [[Int]]>

// Array Declarations.
var arr: [Int] = []
var arr1: Array<Int> = []
var arr2: Array<Array<Int>>
arr2 = [[1]]
arr2.insert([2,3], at: 1)
arr2.insert([3,4], at: 2)
print("Multidimensional array: \(arr2)")
arr1.insert(2, at: 0)
print("Linear array arr1: \(arr1)")
//var arr3:

// Nil-Coalescing Operator
var expectedOptionalVal: String! = nil
var defaultVal = "Default value"
var optionalVal = expectedOptionalVal ?? defaultVal
print("Expected Optional value: \(optionalVal)");

// Sets
var setNames = Set<String>()
setNames.insert("Shahzaib")
setNames.insert("1")

// Functions.
func greetings(name:inout String) {
    print("\(name) greetings")
}
var guest = "Shahzaib"
greetings(name: &guest)

// Variadiac parameters.
func multipleGreetings(names: String...) {
    print(names)
}
multipleGreetings(names: "S","N")

// Default Parameter.
func Greeting(name: String = "John") {  // Consider a guest who always arrives everyday.
    print("Constant guest : \(name)")
}
Greeting()

