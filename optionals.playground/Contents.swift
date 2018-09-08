//: Playground - noun: a place where people can play

//import Cocoa

var str = "Hello, playground"
var unwrappedVal: String? = "wrapped string";
print(unwrappedVal!); // Forcely unwrapped optional.

// Implicity unwrapped optional.
var optionalVal: String! = "Already unwrapped";
print(optionalVal);
// Checking if the value is automatically unwrapping.
if optionalVal == "Already unwrapped" {
    print("Matched!");
}
// Checking If the value matches using an optional which needs to be unwrapped.
if unwrappedVal == "wrapped string" {
    print("Matched As Well!");
    unwrappedVal! += " nope"; // Have to unwrap.
    print(unwrappedVal!);
}

//var num: Int = nil; // Here you cannot make value assignment optional.
var num: Int? = 113; // This is an optional value.

if let constNum = num {  // Unwrapped an optional value.
    print("Some constant number: \(constNum)");
}

//guard let constNum2 = num else {
//    print("Some constant number: \(constNum)");
//    throw "Exit";
//}

// Fucntion to unwrape values.
func unwrape_with_guard() {
    guard let constNum2 = num else {
        print("There is no constant");
        return;
    }
    print(constNum2); // Unwrapped value.
}
unwrape_with_guard();
//print(constNum2);

var val1 = 1;
var val2: Int! = nil;
print("Addition with optional value: \(val1 + val2)");
