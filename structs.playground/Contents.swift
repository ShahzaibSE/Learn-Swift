//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

struct Student {
    var Firstname: String = "John"
    var Lastname: String = "Morrson"
    var age: Int = 23
    var city: String = "California"
    var country: String = "USA"
    // Add a new student
    mutating func addStudent(_ firstname: String, _ lastname: String, _ age: Int, _ city: String, _ country: String) {
        self.Firstname = firstname  // this throws error because self is immutable
        self.Lastname = lastname
        self.age = age
        self.city = city
        self.country = country
    }
}

var student = Student();
student.addStudent("Shahzaib", "Noor", 23, "Karachi", "Pakistan")
print("Student bio: \(student)")

//var myfn = func () {      // This throws error
//
//}
