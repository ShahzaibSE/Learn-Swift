//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


var month = "feb"

switch month {
case "jan":
    print("This is jan")
case "feb":
    print("This is feb")

default:
    print("this is not a month")
}





//var value = 150


//switch value {
//case 1...100:
//    print("no is b/w 1 and 100")
//case 101...200:
//    print("no is b/w 1 and 100")
//    fallthrough
//default:
//    print("this is not available")
//}



var a:Int = Int(2)

//force full but not safe using (!)

//let sum:Int =  a + b!
//unwraping
//var name:String? = "ali"
//name = nil
//
//
//var check:Bool? = true
//check = nil

var b:Int? =  2

// safe side unwrapping
if let value  = b {
    let multi = 2 * value
    print(multi)
}else{
    print("value of optional is nil")
}



func getDataFromNetwork(data:String? , error:String?){
    
    if let d = data {
        print("App is running and data = " + d)
    }else{
        if let e = error {
            print(e)

        }
    }
    
}
getDataFromNetwork(data: "posts are here", error: nil)


// second type of optionals using ! and it unwarp itself automatically
var drink:String!         =      nil


if drink == nil {
    print("its nil")
}else{
    print("i am drinking = " + drink)
}

struct Organization{
    var name:String
    var address:String
}

struct Employ{
    var epName:String
    var id:String
    var company:Organization?
}

var org:Organization = Organization(name: "ABC oranizaion", address: "87 street DHA")
var emp:Employ = Employ(epName: "waqar", id: "1111", company: nil)

//
if let  address = emp.company?.address {
    print(address)
  
}else{
    print("company is nil")
}

//command (windows key) + control + space
//this is for emoji


for i in 1...10{
    for j in 1...10 {
        if i == 1 {
           print("abc")
        }else{
            if j%2 == 0 {
                print("🐳", terminator:"")
            }else{
                print("🌺", terminator:"")
                print("😝", terminator:"")
            }
        }
        
    }
    print("" , terminator:"\n")
}


//dictionary 

var fruits = [String:Int]()
fruits["apple"] = 10
fruits["orange"] = 20

fruits["orange"] = nil

var lightsWavelenght = ["red":200...444 , "yellow": 555...777]

var range:CountableClosedRange? = lightsWavelenght["blue"]
range
//for k in range! {
//    print(k)
//}

type(of:range)






