import UIKit

var sum : Int = 0
var max : Int = 10

// constant that in loop is called "repeating constant"
for number in 1...max { // number is declared "let number : Int" in for loop
    print("\(number) is added...")
    sum += number
}

print(sum)

// Wild card pattern "_"

//Immutable value 'i' was never used; consider replacing with '_'
for i in 0...10 {
    print("Hello")
}

//Replace by '_'
for _ in 0...10 {
    print("Hello")
}

// It can print reverse range by using .reversed()
let reverseNumbers = (1...10).reversed()

for number in reverseNumbers {
    print(number)
}
for number2 in (1...10).reversed() {
    print(number2)
}


// Can also used in array and collection
let list = ["Staff", "Programming", "Swift"]
// It will print "Staff", "Programming", "Swift
for str in list {
    print(str)
}

// Can also loop by character
for i in "Hello" {
    //terminator -> removed '\n' -> Hello will be print
    print(i, terminator: "")
    
}

// stride function
stride(from: 1, to: 15, by: 2) // 1, 3, 5, 7, 9, 11, 13 -> 15 is not included (to)
stride(from: 1, through: 15, by: 2) // 1, 3, 5, 7, 9, 11, 13, 15  -> 15 is included (through)


