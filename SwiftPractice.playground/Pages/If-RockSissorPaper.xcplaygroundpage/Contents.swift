import UIkit

var randomNumbers : Int = Int.random(in: 0...2)

if randomNumbers == 0 {
    print("Rock")
}
else if randomNumbers == 1 {
    print("Sissor")
}
else{
    print("Paper")
}
