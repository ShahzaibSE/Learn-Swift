//: Playground - noun: a place where people can play

import UIKit

// How much the population of the town is?

var karachiPopulation: Int64 = 14910352;

// -- Popualtion decision making.
switch karachiPopulation {
case  13000000 ... 14000000:
    print("Population is less");
case 13500000 ... 14500000:
    print("Population is high");
case 14500000 ... 15000000:
    print("Population is highest");
default:
    print("Population is considerably low");
}

// -- Population decision making.
if (karachiPopulation >= 13000000 && karachiPopulation <= 14000000) {
    print("Population is less");
} else if(karachiPopulation >= 13500000 && karachiPopulation <= 14500000) {
    print("Population is high");
} else if (karachiPopulation >= 14500000 && karachiPopulation <= 15000000) {
    print("Population is highest");
} else {
    print("Population is considerably low");
}

var number1: Int8 = 0;
var number2: Int16 = 2345;

// -- Maximum range -- //
print(Int8.max);
print(Int16.max);
print(Int32.max);
print(Int64.max);
print();


// -- Minimum range -- //
print(Int8.min);
print(Int16.min);
print(Int32.min);
print(Int64.min);

