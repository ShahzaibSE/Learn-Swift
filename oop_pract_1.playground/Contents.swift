//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

//: Playground - noun: a place where people can play

//import Cocoa

class Hero {
    var name: String
    var isAlly: Bool
    private var secret_identity: String
    var if_allied_then_tell_secret_identity = {
        get {
            return self.secret_identity
        }
        set(secret_identity) {
            self.secret_identity = secret_identity
        }
    }
    
    init(name: String, secret_identity: String, isAlly: Bool) {
        self.name = name
        self.isAlly = isAlly
        self.secret_identity = secret_identity
    }
    
    func run() {
        print("\(self.name) ran")
    }
    
    func jump() {
        print("\(self.name) jumped")
    }
    
    
    func fight(move: String) {
        switch move {
        case "punch":
            print("Swings a punch")
        case "kick":
            print("Hero kicked")
        default:
            print("Dodged")
        }
    }
}

class Batman: Hero {
    private var utilitybelt: Dictionary<String,String>
    // Hero properties and methods exists.
    
    init(){
        self.utilitybelt = ["number_of_items" : "10"]
        super.init(name:"Batman", secret_identity: "Bruce Wayne", isAlly:true)
    }
    
    private func callBatMobile() {
        print("Batmobile arrived")
    }
    
    override func fight(move: String) {   // Overriden function for respective hero.
        switch move {
        case "batrang":
            print("Throws batrang")
        case "graple gun":
            print("Fire grapple hook")
        default:
            print("glid")
        }
    }
    
    func assignAliases(alias: String) {
        print("Alias: \(alias)")
    }
    
    func assignAliases(aliasList: Array<String>) {
        print("Alias List: \(aliasList)")
    }
    
}

class Spiderman: Hero {
    // Hero properties and methods exists.
    
}

var darkknight1 = Batman()
print(darkknight1.name)
darkknight1.fight(move: "batrang") // Overriden method
darkknight1.run() // Parent class method.


