import UIKit

enum Planet: Int {
case mercury = 1, venes, earth, mars, jupiter, saturn, uranus, neptune
}

// optional type를 return
let uranusOrder = Planet(rawValue: 7)

// 만약에 rawValue가 없으면 nil return
print(uranusOrder ?? "not a value")

// position
let positionToFind = 11

if let somePlanet = Planet(rawValue: positionToFind) { // 옵셔널 바인딩을 통해 11은 nil 이기 때문에 담기지 않아서 else 실행
    switch somePlanet {
    case .earth:
        print("Mostly harmless")
    @unknown default:
        print("Not a safe place")
    }
}
else {
    print("There is no planet at position \(positionToFind)")
}


indirect enum ArithmeticExpression {
    case number(Int)
    case addition(ArithmeticExpression, ArithmeticExpression)
    case multiplication(ArithmeticExpression, ArithmeticExpression)
}

let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)
let sum = ArithmeticExpression.addition(five, four)
let product = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))

func evaluate(_ expression: ArithmeticExpression) -> Int {
    switch expression {
    case let .number(value):
        return value
    case let .addition(left, right):
        return evaluate(left) + evaluate(right)
    case let .multiplication(left, right):
        return evaluate(left) * evaluate(right)
    }
}

print(evaluate(product))

