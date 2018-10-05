//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var ulrJSON = Bundle.main.url(forResource: "Students", withExtension: ".json")

struct Student{
    var name:String
    var age:Int
    var school:String
}
var stuArr = [Student]()

do{
    var rawData = try Data(contentsOf: ulrJSON!)
    var stuJSON = try JSONSerialization.jsonObject(with: rawData, options: JSONSerialization.ReadingOptions()) as![[String:Any]]
    
    
    for stu in stuJSON {
        
        var Name:String = ""
        var Age:Int = 0
        var School:String = ""
        
        if let name = stu["name"] as? String {
            Name = name
        }
        if let age = stu["age"] as? Int {
            Age = age
        }
        if let school = stu["school"] as? String {
            School = school
        }
        
        var stuObj = Student(name: Name, age: Age, school: School)
        stuArr.append(stuObj)
        
    }

}catch{
    print("Error!")
}



for stu in stuArr {
    print(stu.name)
    print(stu.age)
    print(stu.school)
    print("------------------------")
}


var bits:UInt8 = 0b00000101
//0b11111110
print(0b11111110)
var another:UInt8 = ~bits

/*
  x  y   x&y     x|y     x^y
 0  0     0     0       0
 0  1     0     1       1
 1  0     0     1       1
 1  1     1     1       0
 */
var bits1:UInt8 = 0b00000001
var bits2:UInt8 = 0b00000000

var orBits = bits1 | bits2
var andBits = bits1 & bits2
var XORBits = bits1 ^ bits2




var food:String? = "Pizza"
var drink:String = "7up"
food = "Hello"
var value = food ?? drink
print(value)
// ch 5


var distanceInKm:Int = 100

var distanceInMeter:Int{
return distanceInKm * 1000
}
distanceInMeter


struct SArray {
    var arr:[Int]
  
    var lenght:Int{
        var l = 0
        for _ in arr{
            l+=1
        }
        return l
    }
}
var srarr = SArray(arr: [1,2,3,33,55])
srarr.lenght



struct SuitedCards{
    
    enum Suit {
        case diamond,spades,hearts,club
    }
    enum Value {
        case ace,two,three,four,five,six,seven,eight,nine,ten,king,queen,jack
    }
    
    var value:Value
    var suit:Suit
    
    //stored properties
    var suitDisplay:String {
        switch suit {
        case .club:
            return "This is Club"
        case .diamond:
            return "This is diamond"

        case .hearts:
            return "This is hearts"

        case .spades:
            return "This is spades"
        }
    }
    
    //when parameters needed
    func isBlackJack(otherCard:SuitedCards) -> Bool {
        
        switch value {
        case .ten , .king , .queen , .jack:
            return otherCard.value == .ace
        default:
            break
        }
        switch otherCard.value {
        case .ten , .king , .queen , .jack:
            return value == .ace
        default:
            break
        }
        
        return false
    }
}

var card1  = SuitedCards(value: .ace, suit: .spades)
var card2 = SuitedCards(value: .two, suit: .spades)
card2.isBlackJack(otherCard: card1)



for i in 1...10{
    print("🤓")
}
