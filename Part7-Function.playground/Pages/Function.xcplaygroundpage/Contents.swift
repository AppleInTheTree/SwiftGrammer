import UIKit

// funtion parameter is let type
// function with parameter type String and returing only one value
func saySomething(name: String) -> String {
    return "\(name) is new"
}
print(saySomething(name: "Danial")) // call function with argument(same type with parameter)




// funtion with vaiadic parameter -> only can have one variadic parameter
func variadicParameter(variadic: Int..., single: Int) -> Int {
    var sum: Int = 0
    for a in variadic {
        sum += a
    }
    return sum + single
}
var sum2 = variadicParameter(variadic: 12, 23, 12 , single: 2)
print(sum2)




// function with argument labled
func sumation(first a: Int, second b: Int) -> Int {
    return a + b // Inside function : code the parameter with real name
}
// Outside : have to declare argument with labled
print(sumation(first: 5, second: 7))




// wild pattern function
func wildPattern(_ a: Int, _ b: Int) -> Int {
    return a + b
}
print(wildPattern(12, 15))




// Nested function
func moving(direction: Bool, length: Int) -> Int {
    func straight(input: Int) -> Int {
        return input + 1
    }
    func backword(input: Int) -> Int {
        return input - 1
    }
    if direction {
        return straight(input: length)
    } else {
        return backword(input: length)
    }
}

var movingStep = moving(direction: true, length: 5)
print(movingStep)


// How to pointing and named a function

