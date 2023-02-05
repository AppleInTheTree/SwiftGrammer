import UIKit
// Array declaration (3 way)
let numsArray: Array<Int> = [1,2,3,4,5]
let numArray: [Int] = [1,2,3,4,5]
let nuArray = [1,2,3,4,5]

// let nuArray = [] -> error bc it can not guess the type (You should put at least one element)



var shoppingList = ["Milk", "Egg", "Rice", "Juice", "Potato", "Cheese", "Butter"]
print(shoppingList.count)

shoppingList[0] // subscript grammer

shoppingList.contains("Milk")
shoppingList.randomElement()
//shoppingList.swapAt(0, 1)
print(shoppingList)

// It returns optional value bc array can be empty
if let shopList = shoppingList.first {
    print(shopList)
}


shoppingList[4...6] = ["Bananas", "Apple"]
print(shoppingList.count)

// Adding element in specfic index
shoppingList.insert("Maple Syrup", at: 0)
print(shoppingList)

// Removing element at specfic index
let maypeSyrup = shoppingList.remove(at: 0)
print(maypeSyrup)

// When removing the last element -> .removeLast instead of remove(at:)

let apple = shoppingList.removeLast()

// Iterating over an array

for item in shoppingList {
    print(item)
}

// Can returns a tuple composed of on integer and the item by using enumerated()

for (number, item) in shoppingList.enumerated() {
    print(("\(number+1)s item is \(item)"))
}

