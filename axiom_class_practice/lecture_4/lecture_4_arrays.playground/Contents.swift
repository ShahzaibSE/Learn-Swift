//: Playground - noun: a place where people can play
// ----------------- IMPLEMENT ARRAY API TAUGHT IN CLASS ------------------ //

import Cocoa

var str = "Hello, playground"

// Compound Type.
//var sampleCompoundData: (name: String, age: Int32) = (name: "Shahzaib", age: 24);
//print("\(sampleCompoundData.name) and \(sampleCompoundData.age)" );

var friendList = ["Shaheen", "Kafeel", "Jameel", "Rehan", "Zain"];
// Removing a friend.
friendList.remove(at: 0);
print("Removed a friend: \(friendList)");
// Removing a friend using a value.
friendList.remove(at: friendList.index(of: "Rehan")!); // '!' is unwrapping which can be implemented on Optional values to get your value.
print("Updated friend list: \(friendList)");
// Add a new friend.
friendList.append("Zaid");
print("Appended a new friend: \(friendList)");
// Insert a new friend.
friendList.insert("Alisha", at:4);
print("Inserted a new friend: \(friendList)");
// Checking if a friend exist.
print("Checking if friend list is empty or not:\(friendList.isEmpty)");
// Total number of friends.
print("Total number of friends: \(friendList.count)");
// Splitted Array.
friendList.split(separator: "Jameel");
print("Splited list of friends \(friendList)");
// -- Checking if an element exist  -- //
print("Searched Item: \(friendList.contains("Zain"))");
// ------------------//
// A fixed size array.
var pagesList = Array<Any>();
pagesList = [1,2,3,4,5,6,7,8,9];
print("Fixed size array of 10: \(pagesList)");
print("Capacity of the list: \(pagesList.capacity)")
