import UIKit

//var empty : Int

// This will occur error because there is no value in that memory address
//print(empty)

// This will not occuring the error -> optional type(some value called nill is packaging the value)
var empty: Int? = 10 // (Temporal type)
print(empty)

// If you want to bind non optional value in optional value -> It will be changed to optional type

// If you dont unwrapped the optional type it will remain as optional type which is temporal type



if empty != nil {
    print(empty!)
}

if let a = empty {
    print(a)
}


