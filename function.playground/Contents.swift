//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// Special greeting
func printGreeting(name: String) {
    print("Hello \(name), welcome to your first function");
}
//--Greeting our users--//
printGreeting(name:"Shahzaib");
printGreeting(name:"Shaheen");
//---------------------//

// external parameters.
func printGreetingv2(to name: String){
    print("Hello \(name), welcome to your first function");
}

printGreetingv2(to:"Shahzaib");

//print("Hello \(name), welcome to your first function");

func divisonDescriptionFor(to numerator: Double, to denomenator: Double) {
    print("\(numerator) divided by \(denomenator) is \(numerator/denomenator)");
}

divisonDescriptionFor(to:5.0, to: 4.0);
