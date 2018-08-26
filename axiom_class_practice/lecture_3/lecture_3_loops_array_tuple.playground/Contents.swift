//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let word1 = "Fuzy";
let word2 = "Buzy";

for num in 1...50{
    if(num % 5 == 0) {
        print("Number is \(word1)");
    }
    if(num % 7 == 0) {
        print("Number is \(word2)");
    }
    if(num % 5 == 0 && num % 7 == 0){
        print("Number is \(word1) and \(word2) both!");
    }
}

//print();
print("With switch");
for num in 1...50 {
    switch num {
    case num where num % 5 == 0:
        print("Number is Fuzy");
        fallthrough;
    case num where num % 7 == 0:
        print("Number is Buzy");
    case num where num % 5 == 0 && num % 7 == 0:
        print("Number is Fuzy and Buzy both!");
    default:
        print("Number is neither");
    }
}
