//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground";
let num:Double = 23.344;

print(num);
//debugPrint(print(num));

let digitString: String = "1";
let digitInt: Int = Int(digitString)!;  //It's like explicit type casting.

print(digitInt);

let pi = 3.142;
let number : Int = 10;
let calc : Double = Double(number) + pi;

let calcString = "cal = \(number) * \(pi) = \(calc)";
let calcResultString = String(calc);

print("Test");

func add(numbers:Int...) {
    return numbers;
}
let params = add(1,2,3,4,5);
print(params);
