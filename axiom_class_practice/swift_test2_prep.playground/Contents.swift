import Cocoa

var str = "Hello, playground"


// --- Computed Properties --- //

// *. Between getter and setter in computed properties, setter is optional.

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
    }
}
