//: Playground - noun: a place where people can play

//import Cocoa

var str = "Hello, playground"

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

let reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in
    return s1 > s2
})

print("Reversed names");
print(reversedNames);
