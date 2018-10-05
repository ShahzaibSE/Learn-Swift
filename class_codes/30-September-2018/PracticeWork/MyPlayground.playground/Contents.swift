//: Playground - noun: a place where people can play

//import UIKit
import Foundation
//import Cocoa

//var str = "Hello, playground"
//
//var dic = ["Ali":3,"Hamza":5]
//dic["Ali"] = nil
//print(dic)
//
//var st:String = "Hello"
//var explicitOptional:String?
//var implecitOptional:String!
//
//explicitOptional = "Hey"
//implecitOptional = "There"
//
////st = explicitOptional
//st = implecitOptional
//
//
//
//
//
//// Default Value to optional
//var error :String?
//error = "404"
//
//error?.append(" Try Again")
//print(error)
//
//// The Nil coalescing Operator
//let description = error ?? "Default Value"
//print(description)
//
//// Simple Function
//
//func gretting(){
//    print("Welcome to playground")
//}
//
//gretting()
//
//
//// Function with Parameter
//
//func personalizedGretting(name:String){
//    print("\(name) Welcome to playground")
//}
//
//personalizedGretting(name: "Danish")
//
//// Multiple Parameters
//
//func divisionFunction(numerator:Double,denominator:Double){
//    print("\(numerator) deivided by \(denominator) is \(numerator / denominator)")
//}
//
//divisionFunction(numerator: 10, denominator: 5)
//
//// Explicit Parameter
//
//func sendPersonalGreeting(to name:String){
//    print("Hello \(name)")
//}
//
//sendPersonalGreeting(to: "Danish")
//
//// Variadic Parameters
//
//func sendPersonalGrettings(to names: String...){
//    for name in names{
//        print("Hello \(name)")
//    }
//}
//
//sendPersonalGrettings(to: "Ali","Ahmad","Taha","Jibran")
//
//// Default Parameters Value
//
//func devideFunction(numenator:Double,denominator:Double,withPunctuation punctuation:String = "."){
//    print("\(numenator) divided by \(denominator) is \(numenator / denominator)\(punctuation)")
//}
//
//devideFunction(numenator: 10, denominator: 5, withPunctuation: "KM")
//
//// inout Function
//
//func appendErrorCode(_ code:Int, toErrorString errorString: inout String){
//    if code == 400{
//        errorString += " bad request"
//    }
//}
//
//
//// Return from a value from function
//
//
//var errorString = "Error!"
//
//appendErrorCode(400, toErrorString: &errorString)
//
//func devideDescriptionFor(numerator:Double, denominator:Double, withPunctuation punctuation:String) ->String{
//    return "\(numerator) devided by \(denominator) is \(numerator) /(denomenator)\(punctuation)"
//}
//
//devideDescriptionFor(numerator: 50, denominator: 10, withPunctuation: ".")
//
//
//// Nested Function and Scope
//
//func areaOfTriangle(base:Double,height:Double)->Double{
//    let numerator = base * height
//
//    func divide()->Double{
//        return numerator / 2
//    }
//    return divide()
//}
//
//// Return multiple values from function
//
//func seperateEvenandOdd(numbers:[Int])->(even:[Int],odd:[Int]){
//    var evenNumbers = [Int]()
//    var oddNumbers = [Int]()
//    for number in numbers{
//        if number %  2 == 0 {
//            evenNumbers.append(number)
//        }else{
//            oddNumbers.append(number)
//        }
//    }
//    return (evenNumbers,oddNumbers)
//}
//
//let evenAndOdd = seperateEvenandOdd(numbers: [1,2,3,4,5,6,7,8,9])
//print(evenAndOdd.even)
//print(evenAndOdd.odd)
//
//// Return optional value from function
//
//func findMiddleName(names : (String,String?,String))->String?{
//    return names.1
//}
//
//print(findMiddleName(names: ("Ali", "Raza", "Abidi")))
//
//func greetByMiddleName(name: (String,String?,String)){
//    guard let middleName = name.1 else {
//        print("Hey there!")
//        return
//    }
//    print("Hey \(name.1)")
//}
//greetByMiddleName(name: ("Danish", nil, "Rehman"))
//
//
//var d2Array = [[Int]]()
//d2Array.append([2,4,8,10])
//d2Array.append([1,3,5,7,9])
//
//print(d2Array[0][0])
//
//for numbers in d2Array{
//    for value in numbers{
//        print(value)
//    }
//}
//
//
//
//
//// Revision
//
//// Dictionary
//
//var dic1 = [29374:"Ali",30423:"Huzaifa",23423:"Taha"]
//let name = dic1[29374]
//dic1[52432] = "Ebad"
//
//// Sets
//
//var set1 : Set<Int> = [1,2,3,4,5,6]
//var set2 : Set<Int> = []
//
//print(set1)
//
//// Array
//
//var evenNumbers = [2,4,6,8]
//var oddNumbers = [1,3,5,7,9]
//
//// 2D array
//var numbers : [[Int]] = []
//numbers.append(evenNumbers)
//numbers.append(oddNumbers)
//
//print(numbers[0][0])
//
//for number in numbers {
//    for value in number{
//        print(value)
//    }
//}
//
//// Optional
//
//var explicitStringValue:String?
//var implecitStringValue:String!
//var normalString:String
//
//explicitStringValue = "Hello"
//implecitStringValue = "Hello"
//
//normalString = implecitStringValue
//normalString = explicitStringValue!
//
//if let value = explicitStringValue{
//    print(value)
//}
//
//if explicitStringValue == "Hello"{
//    print("Yes it works without unwrapped here")
//}
//
//if implecitStringValue == "Hello"{
//    print("Yes it also works without unwrapped here")
//}
//
//// Modify an optional in place
//
//var errorCode:String?
//errorCode = nil
//
//errorCode?.append(" Try again later")
//
////print(errorCode!)
//
//
//// Nil Coalsing Operator
//// Try to give default value
//
//var desc:String
////if let errorCode = errorCode{
////    desc = errorCode
////}else{
////    desc = "No Error"
////}
////
//
//desc = errorCode ?? "No Error"
//
//print(desc)
//
//func gret1ting(){
//    print("Hello")
//}
//
//gretting()
//gretting()
//gretting()
//
//// Function Parameters
//
//func personalGretting(name:String){
//    print("Hello \(name)")
//}
//
//personalGretting(name: "Ali")
//
//// Multiple Parameterize Function
//
//func division(numerator:Double,denominator:Double){
//    print("Numerator \(numerator) divide by \(denominator) is \(numerator / denominator)")
//}
//
//division(numerator: 10, denominator: 2)
//
//func printPersonalGreeting(to name:String){
//    print("Hello \(name)")
//}
//
//printPersonalGreeting(to: "Ali")
//
//
//func sendGreetings(names:[String]){
//    for name in names{
//        print("Hello \(name)")
//    }
//}
//
//let names = ["Ali","Hamza","Ayan","Jibran"]
//sendGreetings(names: names)
//
//
//func sendGrettingsTo(names:String...){
//    for name in names{
//        print("Hello \(name)")
//    }
//}
//sendGrettingsTo(names: "Ali","Ayan","Gibran")
//
//func divide(numerator:Double,denominator:Double,byPunctuation punctuation:String = "."){
//    print("\(numerator) divide by \(denominator) is \(numerator / denominator)\(punctuation)")
//}
//
//divide(numerator: 50, denominator: 10, byPunctuation: "km")
//divide(numerator: 50, denominator: 10)
//
//var numerator = 50.0
//var denominator = 10.0
//divide(numerator: numerator, denominator: denominator)
//
//var code = 400
//var codeDescription = "Error"
//
//func appendCodeDescription(code:Int,codeDescription: inout String){
//    if code == 400{
//        codeDescription += " Bad Request"
//    }
//    else if code == 404{
//        codeDescription += " Not Found"
//    }
//}
//
//appendCodeDescription(code: code, codeDescription: &codeDescription)
//
//print(codeDescription)
//
//func createGreeting(to name:String)->String{
//    return "Hello \(name)"
//}
//
//let greet = createGreeting(to: "Ayan")
//print(greet)
//
//func areaOfTriangleWith(base:Double,height:Double)-> Double{
//
//    var baseIntoHeight = base * height
//
//    func halfTime()->Double{
//        return baseIntoHeight / 2
//    }
//    return halfTime()
//}
//
//func separateNumbers(numbers:[Int])->(evens:[Int],odds:[Int]){
//    var evenNumbers : Array = [Int]()
//    var oddNumbers : Array = [Int]()
//
//    for number in numbers{
//        if number % 2 == 0{
//            evenNumbers.append(number)
//        }else{
//            oddNumbers.append(number)
//        }
//    }
//    return (evens: evenNumbers, odds: oddNumbers)
//
//}
//
//let tupleNumbers = separateNumbers(numbers: [1,2,3,4,5,6,7,8,9])
//print(tupleNumbers.evens)
//print(tupleNumbers.odds)
//
//
//func grabMiddleName(name:(String,String?,String))->String!{
//   return name.1
//}
//
//print(grabMiddleName(name: ("Ali", "Somro", "Parwani")))

/////////////////////////////////////

//func greetByMiddleName(name: (String,String?,String)){
//    guard let middleName = name.1 else {
//        print("Hey There")
//        return
//    }
//    print("Hey \(middleName)")
//}

//////////////////////////////////
//
//enum Direction{
//    case south
//    case north
//    case east
//    case west
//}
//
//var direction:Direction = Direction.south
//direction = .north
//
//switch direction {
//case .north:
//    print("North dirsction is selected")
//case .south:
//    print("South direction is selected")
//case .east:
//    print("East Direction is selected")
//case .west:
//    print("West Direction is selected")
//}
//
//enum TextAlignment: Int{
//    case right
//    case left
//    case center
//    case justify
//}
//
//let labelAlignment = TextAlignment.right
//
//switch labelAlignment {
//case .right:
//    print("Label is righ aligned \(TextAlignment.right.rawValue)")
//case .left:
//    print("Label is left aligned \(TextAlignment.left.rawValue)")
//case .center:
//    print("Label is center aligned \(TextAlignment.center.rawValue)")
//case .justify:
//    print("Label has justify alignment \(TextAlignment.justify.rawValue)")
//}
//
//if let leftAlignment = TextAlignment(rawValue: 1){
//    print(leftAlignment)
//}
//
//enum LightBulb{
//    case on
//    case off
//
//    func surfaceTemperature(ambient:Double)->Double {
//        switch self{
//        case .on: return ambient + 150
//
//        case .off:
//            return ambient
//        }
//    }
//
//    mutating func toggle(){
//        switch self{
//        case .on:
//            self = .off
//            print(self.hashValue)
//        case .off:
//            self = .on
//        }
//    }
//}
//
//var bulb = LightBulb.on
//let surfaceTemperature = bulb.surfaceTemperature(ambient:30)
//print(surfaceTemperature)
//
//
//enum ShapeDimensions {
//    case square(Double)
//    case rectangle(Double,Double)
//
//    func area()->Double{
//        switch self{
//        case let .square(side):
//            return side * side
//        case let .rectangle(height,width):
//            return height * width
//        }
//}
//
//}
//
//var squareShape = ShapeDimensions.square(30)
//var rectangleShape = ShapeDimensions.rectangle(20,20)
//
//print(squareShape.area())
//print(rectangleShape.area())
//
//
//
//struct student{
//    var studentName:String
//    var studentAge:Int
//    var studentHeight:Double
//    var studentMarks:[Int]
//}
//
//let std1 = student(studentName: "Ali", studentAge: 30, studentHeight: 5.4, studentMarks: [50,32,43,43,23])
//let std2 = student(studentName: "Yameen", studentAge: 40, studentHeight: 5.5, studentMarks: [76,76,767,65,75])
//
//let students = [std1,std2]
//var heightesTotalMarks = 0
//var toperName:String
//for student in students{
//    print(student.studentName)
//    var sum = 0
//    for marks in student.studentMarks{
//        sum += marks
//    }
//    if sum > heightesTotalMarks{
//        toperName = student.studentName
//    }
//}
//
//
//
//
///////////////
//
//
//var result = 0
//let op = 5
//let op2 = 10
//let opt = "*"
//
//switch opt {
//case "+":
//    result = op + op2
//case "-":
//      result = op - op2
//case "*":
//      result = op * op2
//case "/":
//  result = op / op2
//default:
//    print("operator type is unvalid")
//}
//print(result)
//
//
//var dic = ["ios":50,"Andriod":70,"Web":60]
//var sum = 0
//for num in dic.values{
//    print(num)
//    sum = sum + num
//}
//print(sum)
//
//for key in dic.keys{
//    print(key)
//}
//print(dic["Andriod"]!)
//
//var numbers = [1,2,3,4,-5]
//var min = numbers[0]
//var max = numbers[0]
//
//for number in numbers{
//    if number > max{
//        max = number
//    }
//    if number < min{
//        min = number
//    }
//
//
//}
//
//print(min)
//print(max)
//var table = 7
//for i in 1...20{
//    print("\(table) X \(i) = \(i*table)")
//}


//
//let number = 5
//
//for i in 1...number{
//    for _ in 1...i{
//        print("*", terminator: "")
//    }
//    print("")
//}
//
//print("--------------------------------")
//
//for i in 1...number{
//    for _ in stride(from: 5, through: i, by: -1){
//        print("*", terminator: "")
//    }
//    print("")
//}
//
//
//
//let dic = ["Nasrullah": [89,90,96,94,97],"Zubair": [87,95,87,76,97],"Ayan":[78,78,97,67,87]]
//var toperName = ""
//var heighestTotalMarks = 0
//
//for (name,marks) in dic{
//    var total = 0
//    for mark in marks{
//        total += mark
//    }
//    if total > heighestTotalMarks{
//        heighestTotalMarks = total
//        toperName = name
//    }
//}
//print(toperName)
//print(heighestTotalMarks)
//
//func findNumberOfVowels(){
//    var totalVowles = 0
//for character in toperName{
//    switch character {
//        case "a","e","i","o","u":
//        totalVowles += 1
//        default:
//        print("")
//        }
//    print(totalVowles)
//    }
//}
//findNumberOfVowels()
//
//
//
//
//
//
//
//var studentData = ["Ali":[67,89,67,97],"Ayan":[78,87,45,87]]
//var toperName1 = ""
//var heighestMarks1 = 0
//for (key,value) in studentData{
//        var sum = 0
//    for mark in value{
//        //sum += mark
//        sum = sum + mark
//    }
//    print(sum)
//    if sum > heighestMarks1{
//        heighestMarks1 = sum
//        toperName = key
//    }
//    print(sum)
//
//}
//print(toperName1)
//print(heighestMarks1)
//
//
//
//
//
//
//
//func countVowels(str:String){
//    var count = 0
//    for character in str{
//        switch character {
//        case "a","i","o","e","u":
//            count = count + 1
//        default:
//            print("")
//        }
//    }
//    print(count)
//}
//
//countVowels(str: "danish")
//
//
//struct Town{
//    var population:Int
//    var numberOfStopLight:Int
//
//    func townDescription(){
//        print("Population is \(population) and StopLisht are \(numberOfStopLight)")
//    }
//
//   mutating func changePopulation(by amount:Int){
//        population += amount
//    }
//}
//
//
//let town1 = Town(population: 500, numberOfStopLight: 5)
//
//
//
//class Monster{
//    var town:Town?
//    var name:String?
//
//    init(town:Town,name:String) {
//        self.town = town
//        self.name = name
//    }
//
//
//    func distroyTown(){
//        if let town = town{
//            print("\(name) is distroying Town")
//        }else{
//            print("\(name) has not found any town yet")
//        }
//    }
//
//}
//
//let moster1 = Monster(town: town1, name: "Moster1")
//moster1.distroyTown()
//
//class Zombi:Monster{
//
//    var walkWithLimp:Bool
//
//    init(town:Town,name:String,walkWithLamp:Bool) {
//        self.walkWithLimp = walkWithLamp
//        super.init(town: town, name: name)
//    }
//
//    override func distroyTown() {
//        town?.changePopulation(by: -4)
//        super.distroyTown()
//    }
//
//}
//
//struct organization{
//    var companyName:String
//    var companyType:String
//    var companyLocation:String
//
//    init(companyName:String,companyType:String,companyLocation:String) {
//        self.companyName = companyName
//        self.companyType = companyType
//        self.companyLocation = companyLocation
//    }
//
//}
//
//struct Employe{
//    var employName:String
//    var employNIC:String
//    var employLocation:String
//}

//
//var dic = ["Ali": [56,65,45,65,45],"Ayan":[87,56,75,45,76]]
//var toperName = ""
//var heighestMarks = 0
//
//for (key,value) in dic{
//
//    var sum = 0
//
//    for mark in value{
//        sum = sum + mark
//    }
//        if sum > heighestMarks{
//            heighestMarks = sum
//            toperName = key
//        }
//
//}
//
//print(heighestMarks)
//print(toperName)
//
//func countVowels(name:String)->Int{
//    var count = 0
//    for char in name{
//        print(char)
//        switch char {
//        case "a","e","i","o","u":
//            count += 1
//        default:
//            continue
//        }
//    }
//    return count
//}
//countVowels(name: "axiom")

//
//print("Hello")
//
//func checkLeapYear(year:Int = 2004)->Bool{
//    return year % 4 == 0
//}
//checkLeapYear(year: 2008)
//
//func findMinMax(numbers:Int...)->(Int,Int){
//    var min = numbers[0]
//    var max = numbers[0]
//    for number in numbers{
//        if number > max{
//            max = number
//        }
//        if number < min{
//            min = number
//        }
//    }
//    return (min,max)
//}
//
//func checkPrime(number:Int)->Bool{
//    for j in 2..<number{
//        if number % j == 0{
//            return false
//        }
//    }
//    return true
//}
//
//checkPrime(number: 37)
//
//
//func math(value1:Int,Value2:Int){
//    func sub(value1:Int,value2:Int){
//        print(value1-value2)
//    }
//
//    func mul(value1:Int,value2:Int){
//        print(value1*value2)
//    }
//
//    sub(value1: value1, value2: Value2)
//    mul(value1: value1, value2: Value2)
//
//}
//
//
//func getAuthentication()->(String)->Bool{
//
//
//    func isEmailValid(email:String)->Bool{
//        return !email.isEmpty
//    }
//    return isEmailValid
//}
//
//let valid = getAuthentication()
//print(valid("sdf"))
//
//func getAuth()->(String)->Bool{
//
//    func isEmailValid(email:String)->Bool{
//        return email.isEmpty
//    }
//
//    return isEmailValid
//}
//
//var val = getAuth()
//print(val("danish.rehman08@gmail.com"))
//
////
////func isPrimeNumber(number:Int){
////
////    for i in 2...(number-1){
////        if number % i == 0{
////            print("hello")
////        }
////    }
////
////
////}
////isPrimeNumber(number: 7)
//
//
////
////37
////2...36
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
////Task 1
//
//
//func isLeapYear(year:Int){
//    if year % 4 == 1{
//        print("Year is not leap year")
//    }else{
//        print("Year is leap year")
//    }
//}
//isLeapYear(year: 2004)
//
//func checkMinMax(numbers:Int...)->(Int,Int){
//
//    var min = numbers[0]
//    var max = numbers[0]
//    for number in numbers{
//        if number > max{
//            max = number
//        }
//        if number < min{
//            min = number
//        }
//    }
//
//    return (min,max)
//}
//func math(value1:Int,value2:Int){
//
//    func substraction(num1:Int,num2:Int){
//        print(num1-num2)
//    }
//
//    func multipilcation(num1:Int,num2:Int){
//        print(num1*num2)
//    }
//
//    substraction(num1: value1, num2: value2)
//    multipilcation(num1: value1, num2: value2)
//}
//
//math(value1: 10, Value2:  5)
//
//
//
//
//struct Person{
//    var firstName:String
//    var lastName:String
//    var salary:Int{
//        set{
//            _salary = 2 * newValue
//        }
//        get{
//            return _salary / 2
//        }
//    }
//
//
//    mutating func changeto(firstName:String,lastName:String){
//        self.firstName = firstName
//        self.lastName = lastName
//    }
//}
//
//
//
//var p = Person()
//let chagneName = Person.change
//
//var changeNameToMath = chagneName(&p)
//
//changeNameToMath("John","Galler")
//print(p.firstName)
//
//

//
//class Vehile{
//    var name:String
//    var model:Int
//    var brand:String
//    var cc:Int
//
//
//    init(name:String,model:Int,brand:String,cc:Int) {
//        self.name = name
//        self.model = model
//        self.brand = brand
//        self.cc = cc
//    }
//
//    func move(){
//        print("Vehicle start moving")
//    }
//
//    func stop(){
//        print("Vehicle stop")
//    }
//
//}
//
//class Car:Vehile{
//
//    var engineType:String
//    var isAutomatic:Bool
//    var currentGrear:Int{
//        get{
//            return self.currentGrear
//        }
//        set{
//            if newValue > 0 && newValue < 6{
//                self.currentGrear = newValue
//            }else{
//                print("unvalid gear")
//            }
//        }
//    }
//    init(name:String,model:Int,brand:String,cc:Int,engineType:String,isAutomatic:Bool,isAc:Bool) {
//        self.engineType = engineType
//        self.isAutomatic = isAutomatic
//        super.init(name: name, model: model, brand: brand, cc: cc)
//    }
//
//    func startEngine(){
//        provideDCCurrentToEngine()
//        provideFuel()
//        movePistons()
//    }
//
//    private func provideDCCurrentToEngine(){
//        print("Provide DC current to engine")
//    }
//
//    private func provideFuel(){
//        print("Provide fuel to engine")
//    }
//
//    private func movePistons(){
//        print("Move pistons")
//    }
//
//
//    override func move() {
//        increaseFuelAmount()
//        super.move()
//    }
//
//    private func increaseFuelAmount(){
//        print("Increse fuel amount")
//    }
//
//
//}
//
//
//var audi1:Car = Car(name: "audi1", model: 2012, brand: "Audi", cc: 1000, engineType: "V8", isAutomatic: true, isAc: true)
//
//func +(lhs:Int,rhs:String)->Int{
//    return lhs + Int(rhs)!
//}
//
//var a = 5 + "2"
//

//Task1
//
//func isUserExist(name:String)->Bool{
//    return !name.isEmpty
//}
//
//func getData(isUserExist:(String)->Bool){
//    isUserExist("Hello") ? "Login Successful" : "Login Faild"
//}
//
//getData(isUserExist: isUserExist)
//
//
//
//enum Courses{
//    case web
//    case android
//    case ios
//}
//
//var dic : [String:Courses] = [:]
//dic["Ali"] = Courses.web
//dic["Hamza"] = Courses.ios
//dic["Ebad"] = Courses.android
//dic["Amir"] = Courses.web
//dic["Talha"] = Courses.ios
//dic["Ahsan"] = Courses.android
//
//func getStudents(data:[String:Courses])->([String],[String],[String]){
//    var ios = [String]()
//    var andriod = [String]()
//    var web = [String]()
//
//    for (key,value) in data{
//        switch value {
//        case .web:
//            web.append(key)
//        case .android:
//            andriod.append(key)
//        case .ios:
//            ios.append(key)
//        }
//    }
//
//    return (ios,andriod,web)
//}
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//func iUserExist(name:String)->Bool{
//    return !name.isEmpty
//}
//
//func gtData(abc:(String)->Bool)->String{
//    return abc("") ? "login Successful":"LoginFaild"
//}
//
//gtData(abc: iUserExist)
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//enum courses{
//    case web
//    case andriod
//    case ios
//}
//
//var dics = [String:courses]()
//
//dics["Aamir"] = courses.ios
//dics["MAQ"] = courses.web
//dics["Haris"] = courses.andriod
//dics["Danish"] = courses.ios
//dics["MUQ"] = courses.web
//dics["MOQ"] = courses.web
//dics["MSQ"] = courses.web
//
//
//
//func returnData (data: [String:courses])->([String],[String],[String]
//    ){
//        var web = [String]()
//        var ios = [String]()
//        var andriod = [String]()
//
//        for (key,valuse) in data{
//
//            switch valuse {
//            case .web:
//                web.append(key)
//            case .ios:
//                ios.append(key)
//            case .andriod:
//                andriod.append(key)
//            }
//        }
//        return(web,ios,andriod)
//}
//returnData(data: dics)
//
//
//
//
//// Hex Value
//
//print("\u{65}")
//
////
////
////func dot (v1:vector , v2:vector)->Int{
////    let dotAns = (v1.x * v2.x) + (v1.y * v2.y)
////    return dotAns
////}
////
////
////infix operator ^:MultiplicationPrecedence
////
//// func power(i:Double , j:Double)->Double{
////     return pow(i, j)
//// }
//
//
//postfix operator  %
//
//postfix func %(value:Double)->Double{
//    return (value/100)
//}
//44%
//
//print(0b00000001)
//
//var bits:UInt8 = 0b00000001
//print(~bits)
//
///*
// x  y   x&y     x|y     x^y
// 0  0     0     0       0
// 0  1     0     1       1
// 1  0     0     1       1
// 1  1     1     1       0
// */
//
//
//var distanceInKm:Int = 100
//
//var distanceInMeter:Int{
//    return distanceInKm * 1000
//}
//distanceInMeter
//
//for i in stride(from:1,to:10,by:1){
//     print(i)
//}
//
//for i in stride(from:1,through:10,by:1){
//     print(i)
//}
//
//
//prefix operator √
//
//prefix func √(value:Double)->Double{
//    return sqrt(value)
//}
//
//√25
//
//infix operator ^
//
//func ^(lhs:Double,rhs:Double)->Double{
//    return pow(lhs, rhs)
//}
//
//print(5.0^2.0)
//
//



enum count:String{
    case one = "5"
    case two
}

print(count.one.rawValue)





