import UIKit


var number: Int? = 7
var hello: String? = "Hello"
var water: String? = "Le Minerale"


if let num = number {
    print(num)
}

if let hi = hello {
    print(hi)
}

func makeWater(){
    guard let _ = water else {return}
    print("New Water")
}

makeWater()

// when passing optional as parameter, usually put nil value as a defalt value
func saySomthing(word: String, num: Int? = nil){
    guard let realNum =  num else {return}
    print("\(word)","\(realNum)")
}

saySomthing(word: "hello", num: 5)



