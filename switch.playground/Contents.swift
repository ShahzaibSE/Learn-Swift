//: Playground - noun: a place where people can play

//import Cocoa

var str = "Hello, playground"

var heroAction = "Attack"

switch heroAction {
case "Attack":
    print("Hero attacked the enemy")
    fallthrough
case "Block":
    print("Hero blocked enemy's attack")
    fallthrough
case _ where heroAction == "Attack" || heroAction == "Regenerating":
    print("Hero attacked and regenerating")
default:
    print("Hero in hibernation")
}

// Above code runs all the cases coutesy of 'fallthrough'
