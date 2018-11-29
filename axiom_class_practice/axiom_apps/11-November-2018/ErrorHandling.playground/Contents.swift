

print("Hello")


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

do{
    try getItemFromMachine()
    
    print("")
}catch VendingMachineError.outofStock{
    print("item is out of stok")
}catch VendingMachineError.invaliedSelection{
    print("invalied Selection")
}catch VendingMachineError.lessCoin(let value){
    print("less coin \(value)")
}catch{
    print("undefined error")
}


func throwError()throws{
    throw VendingMachineError.outofStock
}

//try! throwError()

let a = try? throwError()
print(a)


