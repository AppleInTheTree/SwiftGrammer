import UIKit

// factorial using a function
func factorial(num: Int) -> Int {
    var sum: Int = 1
    for i in 1...num {
        sum *= i
    }
    return sum
}


print(factorial(num: 4))

// factorial using a recursive function

func recursiveFunction(num: Int) -> Int {
}
