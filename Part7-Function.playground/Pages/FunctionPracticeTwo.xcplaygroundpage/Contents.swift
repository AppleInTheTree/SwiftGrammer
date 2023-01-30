import UIKit

//@discardableResult
func primeNumber(my: Int, one: Int = 1) -> Bool {

    for i in 1...my {
        if (i > 1) && (i != my){
            if (my % i) == 0 {
                return false
            }
        }
    
    }
    return true
}
    

// func that validate prime number by using guard
func primeNumber(num: Int) -> String {
    guard num != 1 else {return "1 is not a prime number"}
    for i in 2..<num{
        guard (num % i) != 0 else {return "It is not prime number" }
     
    }
   return "prime number"
}
    

print(primeNumber(num: 1))

print(primeNumber(my: 2))

