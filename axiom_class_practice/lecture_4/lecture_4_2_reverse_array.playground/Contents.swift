//: Playground - noun: a place where people can play
// ----------------- REVERSE ARRAY ------------------ //


import Cocoa
import Dispatch

var str = "Hello, playground";

// Reverse printing of array.

var friendList = ["Shaheen", "Kafeel", "Jameel", "Rehan", "Zain"];
var tempArray =  Array<String>();

//print("From most recent friend to the oldest friend");
for index in stride(from: friendList.count - 1, through: 0, by: -1) {
//    print(friendList[index]);
    tempArray.append(friendList[index]);
}
print("Your friendList: \(friendList)");
friendList = tempArray;
print("From latest friends to the oldest friends : \(friendList)");
// --- Emptying temprary list ----- //
tempArray.removeAll();

