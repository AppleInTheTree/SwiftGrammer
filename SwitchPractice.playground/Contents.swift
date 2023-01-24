import UIKit

var greeting = "Hello, playground"

var number : Int = Int.random(in: 0...10)

switch number {
    case 0...4 :
        print("Rock")
    case 5...8 :
        print("Sissor")
    default:
        print("Paper")
}
