import UIKit
// Print the number that is mutiple of 3 in range of 1 through 100
for i in 1...100 {
    if i % 3 == 0 {
        print("\(i) is multiplication of three")
    }
}


// Print the pyramid shape of emogi

for i in 1...5 {
    for a in (1...5) {
        if a > i {
            continue
        }
        print("🙂", terminator:"")
    }
    print()
}
