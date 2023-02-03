import UIKit

var shoppingList = ["Milk", "Egg", "Rice", "Juice", "Potato", "Cheese", "Butter"]
print(shoppingList.count)

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

