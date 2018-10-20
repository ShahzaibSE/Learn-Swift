import Cocoa

var str = "Hello, playground"

typealias Velocity = Double

extension Velocity {
    var kph: Velocity { return self * 1.60934}
    var mph: Velocity { return self / 1.60934 }
}

struct Sample {
    var val1: Int
    func stat() {
        print(self)
    }
}

var sample = Sample(val1:1)
sample.stat()

var velocity: Double = 2.12345
print("Velocity: \(velocity)")

var velocity_referenced_double_type: Velocity = 2.34
print("Double reference type: \(velocity_referenced_double_type.kph)")

protocol Vehicle {
    func start()
    func stop()
    func changeGear(gear: Int)
}

struct Car {
    var cc: Double
    var brand: String
    var model: String
    var gasLevel: Double {
        willSet{ precondition(newValue >= 0 && newValue < 1, "Value must be between 0 and 1") }
    }
}

// Extending protcol

extension Car: Vehicle {
    func start() {
        print("Car has been started")
    }
    func stop() {
        print("Car stopped")
    }
    func changeGear(gear: Int) {
        switch gear {
        case 1:
            print("First Gear")
        case 2:
            print("Second Gear")
        case 3:
            print("Third Gear")
        case 4:
            print("Fourth Gear")
        case 5:
            print("Reverse Gear")
        default:
            print("Neutral")
        }
    }
}

var car1 = Car(cc:2300, brand: "Vitz", model: "2018", gasLevel: 5)
car1.gasLevel = 0.5
print("Gas level: \(car1.gasLevel)")
