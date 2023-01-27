import UIKit

// Print the multiplation table

for fisrt in 1...9 {
    for second in 1...9 {
        var result : Int = fisrt * second
        print("\(fisrt) * \(second) = \(result)")
    }
}


// Print the number that is mutiple of 3 in range of 1 through 100
for i in 1...100 {
    if i % 3 == 0 {
        print("\(i) is multiplication of three")
    }
}
// It can be solved like this too

for i in 1...100 {
    if i % 3 != 0 {
        continue
    }
    print("\(i) is multiplication of three")
}



// print function -> print("", separator, terminator: "\n")
print("hello", terminator: " ") // terminator is ends the function with what is after terminator:


// Print the pyramid shape of emogi
for i in 1...5 { // 1 2
    for a in 1...5 { // 1 2 1
        if a > i { // 1 > 1 2 > 1
            continue
        }
        print("🙂", terminator:"") //🙂
    }
    print() // 1
}
// It can be solved like this too
for i in 1...5 {
    for j in 1...5 {
        if i >= j {
            print("🙂", terminator:"")
        }
    }
    print()
}
