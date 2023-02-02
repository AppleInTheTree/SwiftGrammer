import UIKit

var empty2 : Int

// This will occur error because there is no value in that memory address
//print(empty2)

// This will not occuring the error -> optional type(some value called nill is packaging the value)
var empty: Int? // (Temporal type)
print(empty)

// If you bind non optional value in optional value -> It will be changed to optional type
var empty3 = empty
print(empty3) // empty3 is optional value

// Can not calculate with optional value
var a: Int? = 10
var b: Int? = 11
//a + b //this is error
// If you dont unwrapped the optional type it will remain as optional type which is temporal type

// There are 4 ways to unwrapp the optional type
// 1.
var number: Int? = 10

print(number!)
// 2.
if number != nil {
    print(number!)
}
// 3.
if let num =  number {
    print(num)
}
func guardLet(numbe: Int?) {
    guard let num = numbe else{return}
    print(num)
}
// 4. (nil Coalescing)
// If you can set defalt value in optional type
// If optional value has nil -> than print defalt value
// severName has value "Danial", userName binds to "Danial
var severName: String? = "Danial"
var userName = severName ?? "Minjoo"

// password has nil value -> pass is binding with defalt value which is 1234
var password: Int?

var pass = password ?? 1234


