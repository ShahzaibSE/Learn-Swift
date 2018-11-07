import Cocoa

var str = "Hello, playground"

// Suppose a campus recruitment system
class User {
    func createAccount() {
      print("user created")
    }
    
}

class Student {
    var name: String, age: Int
    init(name: String, age: Int) {
        self.name = name
        self.age = 24
    }
    
    func registeration() {
        print("Student is registered")
    }
    
    func labAccess(studentType: String) {
        print("Student of department: \(studentType)")
    }
}

// Protocol cannot inherit classes
protocol cs_student {
    
}

class CS_Student: Student{
    override init(name: String,age: Int) {
        super.init(name: name, age: age)
        print("Student type: Computer Science")
    }
    
    override func registeration() {
        print("CS student registeration completed")
        // Telling student class "Registeration has been completed"
        super.registeration()
    }
    
    override func labAccess(studentType: String) {
        print("Student Type: \(studentType), Student name: \(name)")
    }
    
}

class ElectronicsStudent: Student {
    // -- Method Overloading -- //
    func calMarks() {
        print("Total marks calculated")
    }
    func calMarks(marks: Array<Int>) {
        let total = marks.reduce(0) { (total, mark) -> Int in
            return total + mark
        }
        print("Total marks: \(total)")
    }
    // ------------------------ //
}

var student = Student(name: "Sebastian", age: 22)
var csStudent = CS_Student(name: "Shane", age: 24)
var electronicStudent = ElectronicsStudent(name: "Shawn", age: 34)
csStudent.registeration()
electronicStudent.calMarks()
