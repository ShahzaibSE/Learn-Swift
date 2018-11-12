import Cocoa

var str = "Hello, playground"


class Hero {
    var Id: Int
    var name: String
    var secretIdentity: String
//    var allie: String
    
    init(id: Int, name: String, secretIdentity: String) {
        self.Id = id
        self.name = name
        self.secretIdentity = secretIdentity
    }
    
    func move(step: Int, leap: Bool?) {}
}

protocol BatmanInfo {
    var allie: String {get set}
    var companyName: String {get set}
    func utilityBelt(name: String)
}

protocol SupermanInfo {
    func move(trajectory: Int, leap: Bool?)
}

var arr: Array<String> = Array<String>()

class Batman: Hero, BatmanInfo {
    var allie: String
    var companyName: String
    private var location: String
    var _location: String { // Computed property
        get {
         return location
        }
        set(locationName) {
            location = locationName
        }
    }
    
    init(allie: String, companyName: String, location: String) {
        self.allie = allie
        self.companyName = companyName
        self.location = ""
        super.init(id: 1, name: "Batman", secretIdentity: "Bruce Wayne")
        self._location = location
    }
    
    func utilityBelt(name: String) {
        
    }
}

class Superman: Hero, SupermanInfo {
    func move(trajectory: Int, leap: Bool?) {
        print("Superman flew")
    }
}

class Spiderman: Hero {}

extension Spiderman {
    func webSwinging() {
        print("Spiderman swinging")
    }
}

// Breaks the execution.
//var someNum: Int
//self.someNum = 23
//print("Number: \(someNum)")

var batman = Batman(allie: "Bat Family", companyName: "Wayne Enterprises", location: "Gotham")
var heroes: [Hero] =  Array<Hero>()
heroes.append(batman)

var webhead = Spiderman(id: 2, name: "Spiderman", secretIdentity: "Peter Parker")
webhead.webSwinging()    // Added in the class via extension.

// Lab Tasks.
protocol MachineMethods {
    func start()
    func stop()
}

class Machine: MachineMethods {
    var brand: String
    // Constructor Definition
    init(brand: String) {
        self.brand = brand
    }
    
    func start() {
        print("Machine started")
    }
    func stop() {
        print("Machine stopped")
    }
}

class Generator: Machine {
    private var kva: String
    // Constructor Definiton
    init(kva: String, brand: String) {
        self.kva = kva
        super.init(brand: brand)
    }
    final override func start() {
        print("Generator started.")
    }
    final override func stop() {
        print("Generator stopped.")
    }
    private func getBrand() -> String{
        return self.brand
    }
}

class Vehicle: Machine  {
    private var cc: String
    // Constructor Definition
    init(cc: String, brand: String) {
        self.cc = cc
        super.init(brand: brand)
    }
    
    final override func start() {
        print("Vehicle started.")
    }
    final override func stop() {
        print("Vehicle stopped.")
    }
    
    private func getBrand() -> String {
        return self.brand
    }
}

var machines: [MachineMethods] = Array<MachineMethods>()
machines.append(Machine(brand: "general"))
machines.append(Generator(kva:"7",brand:"Fuji"))
machines.append(Vehicle(cc:"1200",brand:"Aqua"))
for machine in machines {
    machine.start()
}
print("\u{234}")   // you can get different symbols
var arr1 = [1,2,3,4,5]
var arr1_copy = Array<Int>()
arr1_copy = arr1  // Because 'Array' are generic structure.
print(arr1)
print(arr1_copy.removeAll(keepingCapacity: true))

// -------- //
print("Student Record List")
struct Student: Comparable {    
    var id: Int
    var firstname: String
    var middlename: String!
    var lastname: String
    var age: Int
    var country: String
    
    static func < (lhs: Student, rhs: Student) -> Bool {
        if lhs.id < rhs.id{
            return true
        }else{
            return false
        }
    }
}

var student1 = Student(id:1,firstname:"Shahzaib",middlename:nil,lastname:"Noor",age:23,country:"Pakistan")
var student2 = Student(id:2,firstname:"Shane",middlename:nil,lastname:"Mcmahon",age:23,country:"U.S")
var student3 = Student(id:3,firstname:"Bruce",middlename:nil,lastname:"Wayne",age:23,country:"Gotham")
var student4 = Student(id:5,firstname:"Bryan",middlename:nil,lastname:"Fury",age:23,country:"Washington DC")
var student5 = Student(id:4,firstname:"Richard",middlename:nil,lastname:"Grayson",age:23,country:"Gotham")

var students: [Student] = Array<Student>()
students.append(student1)
students.append(student2)
students.append(student3)
students.append(student4)
students.append(student5)

//print("Students: \(students)")
var sorted_students = students.sorted { (lhs: Student, rhs: Student) -> Bool in
    if lhs.id > rhs.id {
        return true
    } else {
        return false
    }
}
//print(students)
//for student in sorted_students {
//    print(student)
//}

var students2 = students.sorted()
for student in students2 {
    print(student)
}

extension String {
    func assignText() {
        print("Extending String type assigned!, value: \(self)")
    }
    
    init(val: String) {
        self = "\(val);"
    }
}

var name: String = "Shahzaib"
print("Name: \(name)")
name.assignText()

typealias Velocity = Double
// Extension cannot contain stored properties.
extension Velocity {
    var kph : Velocity { return self * 1000 }
    var mph : Velocity { return self }
}

var velocity: Velocity = 23.456
print("Velocity: \(velocity.kph)")

protocol Car {
    var name: String { get set }
    var model: Int {get set}
    
    func start()
    func stop() -> Void
}

struct car: Car {
    var name: String
    var model: Int
    
    var license_no : Int {
        get {
          return model
        }
        set(val) {
            model = val
        }
    }
    
    func start() {
        print("Car started")
    }
    func stop() {
        print("Car switched off")
    }
}

extension car {
    func select_hitGear(gearNo: Int) {
        print("Hit gear: \(gearNo)")
    }
}

protocol sizeCases {
    var small: String {get set}
    var medium: String {get set}
    var large: String {get set}
}

enum Size: sizeCases {
    case small = "small"
    case medium = "medium"
    case large = "large"
}
