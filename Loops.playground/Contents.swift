//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*
  We are going to create a sequence using ... operator (lowerbound...upperbound) from which our for loop will get every item from that sequence
  we will get each item.
 */
for i in (1...10) {
    print(i);
}

// Factorial program.
func FirstFactorial(_ num: Int) -> Int {
    return (1...num).reduce(1,*)
}

// keep this function call here
print("Factorial : \(FirstFactorial(4))");

// Printing a table using repeat loop.
var i = 1;
repeat {
    print("2 * \(i) = \(2 * i)");
    i+=1;
} while(i<=10);
