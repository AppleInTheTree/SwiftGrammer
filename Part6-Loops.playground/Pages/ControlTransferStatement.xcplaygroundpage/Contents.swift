import UIKit

// Continue and Break is Control Transfer Statement

for num in 1...20 {
    if num % 2 == 0 {
        continue // If it meet continue it passed to next loop (nearest)
    }
    print(num)
}

for num in 1...20 {
    if num % 2 == 0 {
        break //It it meet break it get out of the loop (nearest)
    }
}




//printing multiplication tables
for first in 1...9 {
    for second in 1...9 {
        if second == 3 {
            continue // If second is 3 and then it is passing loop 3 and goes to loop4
        }
        var result = first * second
        print("\(first) * \(second) = \(result)")
        
    }
}

for first in 1...9 {
    for second in 1...9 {
        if second == 3 {
            break // If second is 3 and then it is breaking loop 3 and goes back to first loop
        }
        var result = first * second
        print("\(first) * \(second) = \(result)")
        
    }
}
