//: Playground - noun: a place where people can play

//import Cocoa

var str = "Hello, playground"

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

let reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in
    return s1 > s2
})

print("Reversed names");
print(reversedNames);

var students: Array<[String:String]> = Array<Dictionary<String,String>>()
students.append(["name":"Shahzaib"])
students.append(["name":"John"])
students.append(["name":"Alex"])
students.append(["name":"Ken"])
students.append(["name":"Shane"])

print("Students: \(students)")

//var sort_students = students.sort { (s1, s2) -> Bool in
//    if s1["name"] < s2["name"] {
//        return true
//    }else {
//        return false
//    }
//}
//
//var sorted_students = students.sorted { (s1, s2) -> Bool in
//    if s1["name"] < s2["name"] {
//        return true
//    }else {
//        return false
//    }
//}

func optionalVal(val1: String, val2:Int? ) {
    print("Mandatory parameter: \(val1)")
//    print("Optional parameter: \(val2!)")
}

// Functions can be seen as named closures.
optionalVal(val1: "1", val2: nil)

// Closure captures value from surrounding syntax.

func student(_ name: String, _ marks: Int...) -> String{
    var totalMarks = marks.reduce(0, { (tempMark, mark) -> Int in
        return tempMark + mark
    })
    return "\(name) has marks \(totalMarks)"
}

var studentInfo = student("Shahzaib", 56,67,78)
print("\(studentInfo)")

let volutneers = [23, 45, 56, 67, 78]
var sortedVolunteers: [Int] = Array<Int>()
sortedVolunteers = volutneers.sorted(by: {item1, item2 in return item1 < item2})    // Type Inferrence
sortedVolunteers = volutneers.sorted(by: {item1, item2 in  item1 < item2})    // Implicitly return result.
sortedVolunteers = volutneers.sorted(by: {$0 < $1}) // Shorthand syntax for closure arguments.
//sortedVolunteers = volutneers.sorted(by: {item1, item2 in $0 < $1}) // This generates error.
sortedVolunteers = volutneers.sorted(){
    (item1, item2) in
    if item1 < item2 {
        return true
    }else {
        return false
    }
}
print("Inferenced: \(sortedVolunteers)")
print("Implicitly returned: \(sortedVolunteers)")
print("Argument with shorthand syntax returned: \(sortedVolunteers)")
print("Trailing closure returned: \(sortedVolunteers)")


func trailingClosure(num1: Int, num2: Int,closure: (Int, Int)-> Void) {
    closure(num1, num2)
}

trailingClosure(num1: 1, num2: 3) { (num1, num2) in
    print("Addition: \(num1 + num2)")
}

func doSomething(number:Int,onSuccess closure:(Int)->Void) {
    
    closure(number * number * number)
    
}

doSomething(number: 100) { (numberCube) in
    
    print(numberCube) // prints  1000000
    
}

// Closure can capture values.
func townPopulation(_ numberOfPeople: Int) -> () -> Int {
    var population: Int = 0
    func popualtionTracker() -> Int {
        population += numberOfPeople
        return population
    }
    return popualtionTracker
}

var TrackPopulation = townPopulation(500)
TrackPopulation()
TrackPopulation()

var populationTracker2 = TrackPopulation
populationTracker2()
