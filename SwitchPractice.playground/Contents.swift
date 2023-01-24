import UIKit

var greeting = "Hello, playground"

var number : Int = Int.random(in: 0...10)

switch number {
    case let a where a <= 10:
        print("Number is less than 10")
    default:
        break
}
