//: Playground - noun: a place where people can play
// ----------------- REVERSE ARRAY ------------------ //


import Cocoa
import Dispatch

var str = "Hello, playground";

// Reverse printing of array.

var friendList = ["Shaheen", "Kafeel", "Jameel", "Rehan", "Zain"];

print("From most recent friend to the oldest friend");
for index in stride(from: friendList.count - 1, through: 1, by: -1) {
    print(friendList[index]);
}
