import UIKit

// funtion parameter is let type
// function with parameter type String and returing only one value
func saySomething(name: String) -> String {
    return "\(name) is new"
}
print(saySomething(name: "Danial")) // call function with argument(same type with parameter)




// funtion with variadic parameter -> only can have one variadic parameter
func variadicParameter(variadic: Int..., single: Int) -> Int {
    var sum: Int = 0
    for a in variadic {
        sum += a
    }
    return sum + single
}
var sum2 = variadicParameter(variadic: 12, 23, 12 , single: 2)
print(sum2)


// funtion that has initial value in parameter
func intialValue(initial: Int = 5) {
    print(initial)
}

//intialValue()

// function with argument labled
func sumation(first a: Int, second b: Int) -> Int {
    return a + b // Inside function : code the parameter with real name
}
// Outside : have to declare argument with labled
print(sumation(first: 5, second: 7))




// wild pattern function
func wildPattern(_ a: Int, _ b: Int) -> Int {
    return a + b
}
print(wildPattern(12, 15))




// Nested function
func moving(direction: Bool, length: Int) -> Int {
    func straight(input: Int) -> Int {
        return input + 1
    }
    func backword(input: Int) -> Int {
        return input - 1
    }
    if direction {
        return straight(input: length)
    } else {
        return backword(input: length)
    }
}

var movingStep = moving(direction: true, length: 5)
print(movingStep)


// How to pointing and named a function

// funtion that don't have parameter

func noParameter(){
    print("Hello")
}

noParameter

// function that has one parameter

func oneParameter(n: Int) {
    print("\(n)")
}

oneParameter(n:)

// function with more than two parameter

func twoParameter(a: Int, b: String){
    print("\(a) and \(b)")
}

twoParameter(a:b:)

// Can bind function in variable by using pointing function name
var two = twoParameter(a:b:)

two(10,"Hi")


// function with labled argument

func labledParameter(_ a: Int, _ b: Int) {
    print("\(a) and \(b)")
}

labledParameter(_:_:)

// Function overloading

// You can declare multiple function that has same name but different parameter -> overloading

func printSomething(value: Int) {
    print(value)
}
func printSomething(value: String) {
    print(value)
}
func printSomething(value: Int...) {
    print(value)
}

func printSomething() {
    print("Hello")
}


// about inout parameter
// when we deliver argument value to parameter, parameter binding them into let type therefore we can not change the value of the argument inside of the function
// when you want to change global variable that deliver to function by parameter -> we use inout

var temp = 456;
var num = 123;
// by using inout keyword you can change their value
func inoutFunction(a: inout Int, b: inout Int) {
    var temp2 = a
    a = b
    b = temp2
}
// when you are delivering the address of variable, always put &
// it cannot have deliver let type, literal, variadic Parameter, and initail value in parameter
inoutFunction(a: &temp, b: &num)

// value has been change
print(temp)
print(num)


// when you use @discardableResult -> It will not display the warning that return value is unused
@discardableResult
func makeSomething(a: Int) -> Int {
    return a*5
}
// in xcode if we do not put @discardarbleResult it will display warning that return value is unused
makeSomething(a: 5)
