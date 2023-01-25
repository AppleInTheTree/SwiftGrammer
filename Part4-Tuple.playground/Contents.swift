import UIKit


// Tuple is a set of multi type data
// You can combine mutiple data type in tuple
var person : (String, Int, String) = ("Euijin", 22, "JIU")
// Can access element in tuple by number after .
person.0
person.1
person.2

// Can also declare name of elements and then recall them by those names (Named tuple)
let personSpec = (name: "Euijin", age: 22, location: "JIU")
personSpec.name
personSpec.age
personSpec.location

// Tuple decomposition
let (first, second, third) = (1, 2, 3)
print(first, second, third)

let (name, age, location) = personSpec
print(name, age, location)


// Tuple can also use with If & Switch
let iOS = (name: "Swift", version: "5")

if iOS == ("Swift","5"){
    print("\(iOS.name) and its version is \(iOS.version)")
}
else {
    print("Swift is not in right version")
}

switch iOS{
case ("Swift", "5"):
    print("\(iOS.name) and its version is \(iOS.version)")
case ("Swift", "4"):
    print("Swift is version 4")
default:
    break
}

// Tuple Binding
// you can bind a tuple in switch statement
var coordinate = (Int.random(in: 1...3), Int.random(in: 0...4))

switch coordinate{
case (let x, let y) where x == y:
    print("Same")
case (let x, let y) where x > y:
    print("Up")
case (let x, let y) where x < y:
    print("Down")
default:
    break
}


/*: ## __Tuple can be used in function__
    
    Originally function has only one return value, means that it can not return mutiple values, but by using tuple function is able to return mutiply value in form of tuple
 */



