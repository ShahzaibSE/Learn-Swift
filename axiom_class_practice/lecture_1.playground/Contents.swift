//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground";

// ---- Karachi City Information. ------ //
var cityName: String = "Karachi";
var cityPopulation = "14,910,352";
var cityProvince: String = "Sindh";
let cityLatitude: Double = 24.8607;
let cityLongitude: Double = 67.0011;

// --- Display Karachi city Information. ------ //
print("\(cityName) is a city with population of \(cityPopulation), it's located in province \(cityProvince) and on the globe with latitude: \(cityLatitude) & longitude: \(cityLongitude)");

var number1 = 1;
var number2 = 2;

if number1 > number2 {
    print("Number #1 is greater than Number #2");
} else if (number2 > number1) {
    print("Number #1 is not greater than Number #2");
}

// Some Arthematic operators.
number1 += 3;
number2 += 1;
print("Number #1 is \(number1)");
print("Number #2 is \(number2)");

// -- Logical Operations -- //
if number1 == number2 {
    print ("Number 1 is equal to number 2");
} else {
    print("Number 1 is not equal to number 2");
}

