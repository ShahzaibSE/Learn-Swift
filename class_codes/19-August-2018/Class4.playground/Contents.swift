//: Playground - noun: a place where people can play


// Last Class Code:

for _ in 1...10{
    //print(i)
    print("Ali")
}
// It would iterate from 0 to 9
for i in stride(from: 0, to: 10, by: 1){
    print(i)
}

// It would iterate from 0 to 10
for i in stride(from: 0, through: 10, by: 1){
    print(i)
}

// Use of while loop {first check condition then execute block of code}
var i = 10
while i > 0 {
    print(i)
    i -= 1
}

// Use of repeat while loop {first execute block of code then check condition}
repeat {
    print("Ali")
    i += 1
}while i > 10

// Arrays

// Integers Array
var evenNumbers = [2,4,6,8]

// Strings Array
var studentNames = ["Ali","Amire","Danish"]

// Doubles Array
var studentHeight = [6.2,5.4,5.8]

// Bools Array
var isMale = [true,true,true]

// Array declaration
var todoList:Array<String>

// Array initialization
todoList = Array<String>()

// Array functions

print(todoList.count)

todoList.append("Read Book")
todoList.append("Complete Project")
todoList.append("Prepare for class")

print(todoList.count)

todoList[0] += "ARKit Book"
print(todoList[0])

todoList[1] = "Complete Client1 Project"
print(todoList[1])

todoList.index(of: "Prepare for class")

todoList.insert("Repaire Projecter", at: 1)

todoList.remove(at: 1)
print(todoList)

todoList.contains("Read Book")

todoList.isEmpty


var friendTodoList = Array<String>()
friendTodoList.append("Read Book")
friendTodoList.append("Complete Project")
friendTodoList.append("Prepare for class")

//var friendTodoList2 = Array<String>()
//friendTodoList2.append("Read Book")
//friendTodoList2.append("Prepare for class")
//friendTodoList2.append("Complete Project")
var friendTodoList2 = Array<String>()
friendTodoList2.append("Read Book")
friendTodoList2.append("Complete Project")
friendTodoList2.append("Prepare for class")


// Check if two array have same elements at same indexes
print(friendTodoList == friendTodoList2)


print(friendTodoList2)

//for i in friendTodoList2.count{
//    print(friendTodoList2[i])
//}


// For loop for array

for item in friendTodoList2{
    print(item)
}

// Use rang in Array

print(friendTodoList2[0...2])

print(friendTodoList2[0...friendTodoList2.count - 1])


// Set {unique and unorders values}

var groceryItem:Set<String> = Set<String>()

groceryItem.insert("Milk")
groceryItem.insert("Vegetables")
groceryItem.insert("Books")
print(groceryItem)


var brotherGroceryList : Set<String> = Set<String>()
brotherGroceryList.insert("Milk")
brotherGroceryList.insert("Vegetables")
brotherGroceryList.insert("Books")
brotherGroceryList.insert("Fruits")

// Check if an item exists in set
brotherGroceryList.contains("Milk")

// Retuen similar elements from both sets
var commonGrocery = groceryItem.intersection(brotherGroceryList)
print(commonGrocery)

// Combine two Set's element using not repeatable approach
var distintGrocery = groceryItem.union(brotherGroceryList)
print(distintGrocery)

// Give values which are present in first set but not in second set.
var uniqureGrocery = brotherGroceryList.subtracting(groceryItem)
print(uniqureGrocery)



















































































































