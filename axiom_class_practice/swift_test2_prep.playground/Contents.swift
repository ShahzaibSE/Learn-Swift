import Cocoa

var str = "Hello, playground"


// --- Computed Properties --- //

// *. Between getter and setter in computed properties, setter is optional.
// *. Computed property must have an explicit type.
enum Size {
    case small
    case medium
    case large
}

struct Town {
    var population: Int
    var townHouses: Int
    
    init(population: Int, townHouses: Int) {
        self.population = population
        self.townHouses = townHouses
    }
    
    var townSize: Size  {
        get {
            switch self.population {
            case 1...10000:
                return Size.small
            case 10000 ..< 20000:
                return Size.medium
            case 20000 ... 30000:
                return Size.large
            default:
                return Size.small
        }
      }
  }
    var numberofHouses: Int {
        get {
            return 10
        }
        set(numberofHouses) {
            switch  numberofHouses {
            case 1...10000:
                self.townHouses = 100
            case 10000 ..< 20000:
                self.townHouses = 200
            case 20000 ... 30000:
                self.townHouses = 300
            default:
                self.townHouses = 1000
            }
        }
    }
    
    mutating func changePopulation(changedPopulation: Int) {
        self.population = self.population - changedPopulation
    }
    
    func getTownPopulation() {
        print("Town population: \(self.population)")
    }
}

extension Town {
    func getTownInfo() {
        print("Population: \(population)")
        print("Town Houses: \(townHouses)")
    }
}

//var townsville = Town(population: 20, townHouses: 30000)
var townsville = Town(population: 800,townHouses: 40000)
print("Town Size: \(townsville.townSize)")
print("Number of total houses: \(townsville.numberofHouses)")

//var someVal  = {
//    get
//}

// Classes.

struct Victim {
    var type_of_victim: String = "children"
    var numberofvictims: Int = 200
}

struct Car {
    var name: String
    var model: String
    
    init(name: String, model: String) {
        self.name = name
        self.model = model
    }
    
    init(Name: String, Model: String) {
        self.init(name: Name, model: Model)
    }
}

var bmw = Car(Name: "BMW", Model: "2018")

var childVictim = Victim()  // Empty Initializer

// Empty initializer available when stored properties initialized.
class Monster {
//   var name: String = "Kraken"
//   var type: String = "water"    // e.g: Ground, Flying, Water, Hybrid,
//   var town: Town = Town(population: 800,townHouses: 40000)
    var name: String
    var type: String   // e.g: Ground, Flying, Water, Hybrid,}
    var town: Town
    
    init(name: String, type: String,population: Int, townHouses: Int) {
        self.name = name
        self.type = type
        self.town = Town(population: population, townHouses: townHouses)
    }
    
    func attack(houses: Int) {
        print("\(name) attacked")
        self.town.changePopulation(changedPopulation: houses)
        self.town.getTownPopulation()
    }
}

class KingKong: Monster {
    private var location: String
    
    var setLocation: String {
        get {
            return self.location
        }
        set(Location) {
            self.location = Location
        }
    }
    
    init(location: String) {
        self.location = location
        super.init(name: "King Kong", type: "Ground", population: 20000, townHouses: 2000)
    }
    
    private func movementType(_ movement: String) {
        switch movement {
        case "climb":
            print("\(name) climbed")
        case "swing":
            print("\(name) swung")
        case "leap":
            print("\(name) leaped")
        default:
           print("Standing")
        }
    }
    
    func getLocation() {
        print("Location of \(name) is \(location)")
    }
    
    public func getMovement(movement: String) {
        movementType(movement)
    }
}

class Godzilla: Monster {
    private var location: String
    
    var setLocation: String {  // Computed property.
        get {
            return self.location
        }
        set(Location) {
            self.location = Location
        }
    }
    
    init(location: String) {
        self.location = location
        super.init(name: "Godzilla", type: "Hybrid", population: 20000, townHouses: 2000)
    }
    
    private func movementType(_ movement: String) {
        switch movement {
        case "swim":
            print("\(name) swiming")
        case "walk":
            print("\(name) walking")
        default:
            print("Standing")
        }
    }
    
    func getLocation() {
        print("Location of \(name) is \(location)")
    }
    
    public func getMovement(movement: String) {
        movementType(movement)
    }
    
    override func attack(houses: Int) {
        print("A monster of hybrid type")
        print("\(name) attacked!")
    }
    
}

var kingkong = KingKong(location: "Jungle")
kingkong.getMovement(movement: "leap")
var godzilla = Godzilla(location: "Sea")
godzilla.attack(houses: 40)
kingkong.name = "King of the Jungle KingKong"
//kingkong.

// Enums are first class type
enum Directions: Int {
    case east = 1, west, north, south
}

var eastDirection = Directions.east
print("Direction: \(Directions(rawValue: Directions.east.rawValue)!)")

protocol ShapeMethods {
    func calDimensions() -> Double
}

enum Shape: ShapeMethods {
    case square(x: Double)
    case rectangle(x: Double, y: Double)
//    var tempValue: Int = 0 // Enum must not contain stored properties.
    func area()->Double{
        switch self {
        case let .square(side):
            return side * side
        case let .rectangle(width, height):
            return width * height
        }
    }
    
    func calDimensions() -> Double {
        return 0.0
    }
}


protocol test {
    mutating func mutateData( Str1:String, Str2 :String) -> String
}

class Test : test {
    func mutateData(Str1: String, Str2: String) -> String {
        return "\(Str1) and \(Str2)"
    }
}


// Error Handling.
enum VendingMachineError: Error{
    case outofStock
    case invaliedSelection
    case lessCoin(Int)
}


struct Item{
    var price:Int
    var count:Int
}

class VendingMachine{
    var inventroy = ["Cold Drink":Item(price: 30, count: 20),"Snak":Item(price: 10, count: 50)]
    var coinDeposit = 0
    
    func getItem(name:String)throws{
        
        guard let item = inventroy[name] else{
            throw VendingMachineError.invaliedSelection
        }
        
        guard item.count != 0 else{
            throw VendingMachineError.outofStock
        }
        
        guard item.price < coinDeposit else{
            throw VendingMachineError.lessCoin(item.price - coinDeposit)
        }
        
        
        print("Got Item")
    }
    
    
}

func getItemFromMachine()throws{
    let machine = VendingMachine()
    try machine.getItem(name: "Cold Drink")
}

var vendingMachine = VendingMachine()
//try vendingMachine.getItem(name: "Cold drink")

enum CalculatorExceptions:Int, Swift.Error {  // Swift.Error you are implementing error handling protocol.
    case dividebyzero
}

class Calculator {
    func divide(input1: Double, input2: Double)throws -> Double{
        guard input2 != 0 else {
            throw CalculatorExceptions.dividebyzero
        }
        return input1 / input2
    }
    
    func divideV2(input1: Double, input2: Double)throws -> Double{
        if input2 == 0
        {
           throw CalculatorExceptions.dividebyzero
        } else {
             return input1 / input2
        }
    }
}

var calculator = Calculator()
// Default catch must be in last, it can make appropriate catch statements unreachable.
do {
  let result =  try calculator.divide(input1: 34, input2: 0)
    print("Divison: \(result)")
}
//catch {
//    print("UnIdentified error: \(error)")   // error has error type dividebyzero which was described.
//}
catch CalculatorExceptions.dividebyzero {
    let testvalue = 23
    print(testvalue)
//    throw "Divide by zero not valid."  // String does not conform to this.
    print("Divide by zero not valid")
}catch {
    print("UnIdentified error")
}

func throwException()throws {
    throw CalculatorExceptions.dividebyzero
}

//let isException = try? throwException()
let isException = try? calculator.divide(input1: 233, input2: 0)
print("If Exception: \(isException)")  // Output: nil - error was thrown
let dividev2Result = try? calculator.divideV2(input1: 46, input2: 0)
print("Divide result: \(dividev2Result)")

let stop_error_propagation = try! calculator.divide(input1: 56, input2: 3)
print("code after disabling error propagation, divison operation: \(stop_error_propagation)")
//func divide(_ num1: Double,_  num2: Double) -> Double{
//    return num1 / num2
//}
//
//let divideResult = divide(10,0)
//print(divideResult)

func studentData(firstname: String,middlename: String = "Khan", age: Int) {
    print("Middle Name: \(middlename)")
}

studentData(firstname: "Shahzaib", middlename: "Ahmed",age: 24)

var tuple = (number1: 2, number2: 1)
print(tuple)

func sample(num1 :inout Double, num2 :inout Double) -> (number1:Double,number2:Double){
    num1 += 1
    num2 += 2
    return (number1:num1,number2:num2)
}
var value1: Double = 23
var value2: Double = 35
let result = sample(num1: &value1, num2: &value2)

// Variadic parameters.
func takeStudentData(marks: Int..., name: String) {
    print("Student Name: \(name)")
    print("Marks: \(marks)")
}

takeStudentData(marks: 89, 98, 85, name: "Alex")

func greet(person: String, from hometown: String) -> String {
    return "Hello \(person)!  Glad you could visit from \(hometown)."
}

greet(person: "Johnny", from: "Smallville")

class SampleClass {
    var sampleP1: Int = 1
}

extension SampleClass {
//    var cProperty: Int {
//        get() {
//          return 1
//        }
//    }
    enum sampleTypes {
        case s1
        case s2
        case s3
    }
    
    func getaType() -> sampleTypes {
        return sampleTypes.s1
    }
}

var sample_class = SampleClass()
//sample_class.getaType()

// Closures.

// Capturing values with closures.
func changePopulation(population: Int) -> ()->Int {
    var totalPopulation = population
    func changePopulation() -> Int{
        totalPopulation += population
        return totalPopulation
    }
    return changePopulation
}

var townsvillePopulation = changePopulation(population: 1000)
townsvillePopulation()
// Closures as reference types.
var referencingTownPopulation = townsvillePopulation
var currentPopulation = referencingTownPopulation()
print("Current Population: \(currentPopulation)")


// Function as argument.
func buildTown(budget: Int, condition: (Int) -> Bool) -> ((Int,Int) -> Int)?{
    var totalbudget = budget
    if condition(totalbudget) {
        func buildTown(numberofLight: Int, toExistingLights existingLights: Int) -> Int{
            return numberofLight + existingLights
        }
       return buildTown
    }
    else {
        return nil
    }
}

func evaluate(budget: Int) -> Bool {
    return budget > 10000
}

if let townStatus = buildTown(budget: 20000, condition: evaluate) {
     let townLightsTotal = townStatus(200,200)
     print(townLightsTotal)
}


func greeting(from sender: String, to recipent: String) {
    print("Sender: \(sender)")
    print("Recipent: \(recipent)")
}

greeting(from: "Alex", to: "George")

func buildTown2(budget: Int) -> ((Int,Int) -> Int){
    var totalbudget = budget
        func buildTown(numberofLight: Int, toExistingLights existingLights: Int) -> Int{
            return numberofLight + existingLights
        }
        return buildTown
    }

var absoluteTownbuilding = buildTown2(budget: 30000)
absoluteTownbuilding(2000, 3000)

func doyouwanttoGreet() -> (String,String)-> String{
    func greeting(from sender: String, to recipent: String) -> String{
        print("Sender: \(sender)")
        print("Recipent: \(recipent)")
        return "\(sender): \(recipent)"
    }
    return greeting
}

var greet = doyouwanttoGreet()
var Greeting = greet("James", "Alex")
print(Greeting)
var Greeting2 = greeting
Greeting2("J","k")

/*
 
 Assignment
 
 /*
 1.Make Struct/Class for Students (name,age,marsksArray)
 2.Make Array of Student Struct/Class
 
 3.Map array into Student ages[Int] array
 4.Filter students array with marks >80%
 5.Sort array by their percentage with alphabetic order
 6.Reduce into String "(Name,Age,totalMarks)"
 
 */
 
 */

/*
 Value Types:
 1. Array
 2. String,
 3. Dictionary
 4. Int
 */

class Villain {
    var name: String
    init(Name:String) {
        name = Name
    }
}

let villain = Villain(Name: "The Joker")
let villain2 = villain
let villain3 = Villain(Name: "Penguin")
//villain2 = villain3
villain.name
villain.name = "Riddler"
villain.name
//villain.name = "Riddler"

var numbers_list = Array<Int>([10,20,30,40,50])

func fn(a: Int, condition:(Int)-> Int)-> Int {
    return condition(a)
}

let result1 = fn(a: 2) { (num) -> Int in
    return num * num
}
print("Trailing closure result: \(result1)")

func fn_version2(a:String, printVal:(Any) -> Void){
    printVal(a)
}

fn_version2(a:"test shorthand syntax",printVal: {print($0)})
