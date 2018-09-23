//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"
var studentList = Array<Dictionary<String, String>>()  // Creating an array which contains a list of data associated with each student.
var superheroInfo: Dictionary<String,String> = ["name":"Batman", "secretIndentity":"Bruce Wayne", "age":"28"]

studentList = [["name": "Shahzaib", "age": "23", "country" : "Saudia Arabia"],
               ["name" : "Shaheen", "age" :"25", "country": "Egypt"], ["name" : "Shaheen", "age" :"30", "country": "Egypt"]]

for student in studentList {
    for (key, value) in student {
        print("\(key) : \(value)")
    }
    print();
}



// some more switch snippet.
var hero: Dictionary<String,String> = ["name": "Batman", "real_name" : "Bruce Wayne", "alias" : "Gotham City"]

print("Get your superhero")
switch hero["alias"]{
case "Batman", "The Cape Crusader", "Gotham City" :
    print("The Dark Knight")
    fallthrough
case "The Cape Crusader":
    print("Gotham's guardian")
case "Gotham City":
    print("The Batman")
//case 1...10:  // This throws error
//    print("The Trinity")
default:
    print("Superhero not found")
}

var arr: [Any] = ["34",1]
