//: Playground - noun: a place where people can play

//import Cocoa

var str = "Hello, playground"

func calculator(first_val: Double, second_val: Double, operation: String = "+") -> Double {
    switch operation {
    case "+" :
        return first_val + second_val
    case "-":
        return first_val - second_val // Substraction.
    case "*":
        return first_val * second_val // Multiplication.
    case "/":
        return first_val / second_val // Divison.
    default:
        print("Operation failed");
        return 0.0;
    }
}

let addition_result: Double = calculator(first_val:2, second_val:45) // Default Operation: Addition
print("Addition: \(addition_result)")
let subtraction_result: Double = calculator(first_val:2, second_val:45,operation: "-") // Substraction
print("Subtraction: \(subtraction_result)")
let multiplication_result: Double = calculator(first_val:2, second_val:45,operation: "*") // Multiplication
print("Multiplication: \(multiplication_result)")
let divison_result: Double = calculator(first_val:2, second_val:45,operation: "/") // Divison
print("Divison: \(divison_result)")

