import Cocoa

var str = "Hello, playground"

// Task #1
//1.Make Struct/Class for Students (name,age,marsksArray)
print()
print("Task #1")
class Student{
    var name: String
    var age: Int
    var marks: [Int]
    init(name: String, age : Int, marks: Array<Int>) {
        self.name = name
        self.age = age
        self.marks = marks
    }
}

var student1 = Student(name:"Shahzaib",age:25,marks:[95,76,77,87,98])
var student2 = Student(name:"Alex",age:34,marks:[95,86,87,87,98])
var student3 = Student(name:"Annie",age:25,marks:[35,50,67,36,21])
var student4 = Student(name:"John",age:22,marks:[40,56,77,87,45])
var student5 = Student(name:"Jane",age:26,marks:[22,56,67,37,55])

// Task #2
//2.Make Array of Student Struct/Class
print()
print("Task #2")
var students: Array<Student> = [student1,student2, student3, student4, student5]

// Task #3
// 3.Map array into Student ages[Int] array
print()
print("Task #3")
var age:[Int] = Array<Int>()
age = students.map { (student) -> Int in
    return student.age
}

print("Student ages: \(age)")

// Task #4
//4.Filter students array with marks >80%
print()
print("Task #4")
var filteredStudents =  students.filter { (student) -> Bool in
    let total = student.marks.reduce(0, { (totalMarks, marks) in
        return totalMarks + marks
    })
    let percentage = total/5
    if percentage > 80 {
        return true
    } else {
        return false
    }
}
for top_students in filteredStudents {
    print("Top Students: \(top_students.name)")
}

// Task #5
//5.Sort array by their percentage with alphabetic order
print()
print("Task #5")
var name_sorted_students = students.sorted { (lhs, rhs) -> Bool in
    if (lhs.name < rhs.name) {
        return true
    }else {
        return false
    }
}
print("Students sorted in Alphabatical Order")
for student in name_sorted_students {
    print(student.name)
}

// Task #6
// 6.Reduce into String "(Name,Age,totalMarks)"
print()
print("Task #6")
var stringifiedArr = students.map { (student) -> String in
    let total_marks = student.marks.reduce(0, { (total, mark) in
        return total + mark
    })
    return "(\(student.name), \(student.age), \(total_marks))"
}

print("Stringified student information: \(stringifiedArr)")
//var number = 1
//number += 1
//print(number)
