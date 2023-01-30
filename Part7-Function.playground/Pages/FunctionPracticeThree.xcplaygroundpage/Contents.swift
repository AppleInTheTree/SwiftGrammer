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

func recursiveFunction(num: Int) -> Int { 5
    if num <= 1 {
        return 1
    }
    
    return num * recursiveFunction(num: num - 1)
}

print(recursiveFunction(num: 5))





/*
 
 re4 return 1   -> 1
 re3 ( 2* 1 -> 2
 re2 ( 3* 2 -> 6
 re1 ( 4* 6 -> 24
 */
