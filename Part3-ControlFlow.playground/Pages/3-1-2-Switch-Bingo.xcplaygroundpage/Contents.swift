import UIKit


var randomNumbers = Int.random(in: 0...10) //Number that computer choose
var myNumber = Int.random(in: 0...10) // My number

if myNumber == randomNumbers{
    print("Bingo")
}
else if myNumber > randomNumbers{
    print("Down")
}
else{
    print("Up")
}
