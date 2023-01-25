import UIKit

// In Swift they dont use expression line 2 < a < 10 when declaring the range of something. Instead they declare the range like 1...10, 1..<10, ...10, ..<10.
// Range operator is usually used in pattern matching in switch statement, and with for statement


// Closed range operator

1...10
1...
...10

// Half-Open range operator

1..<10
..<10


var randomNumber = Int.random(in: 1...4)

switch randomNumber{
case 1..<2:
    print("It is 1")
case 2..<3:
    print("It is 2")
case 3..<4:
    print("It is 3")
default:
    print("It is 4")
}



