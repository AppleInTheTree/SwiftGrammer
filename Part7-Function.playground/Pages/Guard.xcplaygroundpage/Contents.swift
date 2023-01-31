import UIKit

// Guard is another conditional statement (like if)
// early exit -> must have exit code like return or throw...
// Guard statement execute the else if first

var x: Int = 10
for i in 0...x {
    if i > 5 {
        print("i is greater than 5")
    } else {
        continue
    }
    
}

// by using guard it increased the readability and also if can uncap the optional type more safely

for _ in 0...x {
    guard x > 5 else {continue}
    print("x is greater than 5")
}

