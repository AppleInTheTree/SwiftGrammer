import UIKit


// 0 is Rock
// 1 is Sissor
// 2 is Paper

var randomNumbers = Int.random(in: 0...2) //Number that computer choose
var myNumber = Int.random(in: 0...2) // My number

//printing the result of random
switch randomNumbers{
case 0:
    print("Rock")
case 1:
    print("Sissor")
case 2:
    print("Paper")
default: // Switch must be exhaustive
    break
}

switch myNumber{
case 0:
    print("Rock")
case 1:
    print("Sissor")
case 2:
    print("Paper")
default:
    break
}

if myNumber == randomNumbers{
    print("Draw")
}
else if myNumber == 0 && randomNumbers == 1  {
    print("I won")
}
else if myNumber == 1 && randomNumbers == 2 {
    print("I won")
}
else if myNumber == 2 && randomNumbers == 0{
    print("I won")
}
else{
    print("I lose")
}

