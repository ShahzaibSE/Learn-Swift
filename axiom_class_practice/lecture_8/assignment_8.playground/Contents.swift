//: Playground - noun: a place where people can play

//import Cocoa

struct Town {
    var number_of_spotlights: Int
    var population: Int
    
    func printPopulation() {
        print("Town population: \(self.population) and number of spotlights: \(self.number_of_spotlights)")
    }
    
    mutating func changePopulation(by amount: Int) {
        if(self.population != 0 && self.population > 0) {
            self.population = self.population + amount
            print("Monster reduced the population")
        } else if self.population < 0 {
            print("Not enough population to terrorize")
        }
    }
}

class Monster {
    var name: String
    var town: Town?
    
    init(name: String){
        self.name = name
//        self.town = Town(number_of_spotlights: 23, population: 0)
        self.town = Town(number_of_spotlights: 23, population: 6000)

    }
    
    func terrorizeTown() {
        if town != nil {
            print("\(name) is terrorizing the town")
        } else {
            print("\(name) hasn't found a town to terrorize yet")
        }
    }
}

class Zombie: Monster {
    override func terrorizeTown() {
        print("Zombie eating people")
        town?.changePopulation(by: -5)
    }
}

class Vampire: Monster {
    var turns_into_bat: Bool
    init(turns_into_bat: Bool) {
        self.turns_into_bat = true
        super.init(name:"Vlad")
    }
    func suckBlood(of victims: Int,of qunatity_of_blood: String) {   // This function is similar to terrorize town, it's being added for the sake of uniqness.
        if town != nil && town!.population > 0 {  //checking if the population is zero or not.
            town?.changePopulation(by: victims)
            town?.printPopulation()
            print(town!.population)
            print("\(name) victimized population \(town!.population)")
        }else {
            print("Vampire didn't find meal");
        }
    }

    override func terrorizeTown() {
            if(town != nil && town!.population > 0) {
                town!.changePopulation(by: 4)
                town!.printPopulation()
                print("\(name) has reduced the population")
        } else {
            print("\(name) hasn't terrorize yet")
        }
    }
}


print()
print("|============ Monster Type: Vampire ===============|")
var vampire1 = Vampire(turns_into_bat: true)
vampire1.suckBlood(of: -45, of: "23%")
vampire1.terrorizeTown()
