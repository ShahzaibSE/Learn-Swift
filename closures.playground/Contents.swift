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

var sort_students = students.sort { (s1, s2) -> Bool in
    if s1["name"] < s2["name"] {
        return true
    }else {
        return false
    }
}

var sorted_students = students.sorted { (s1, s2) -> Bool in
    if s1["name"] < s2["name"] {
        return true
    }else {
        return false
    }
}
