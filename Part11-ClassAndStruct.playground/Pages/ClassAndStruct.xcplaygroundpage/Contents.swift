import UIKit

// 클래스나 구조체는 틀, 객체는 실제 데이터




// struct랑 class도 type를 만드는 것이기 때문에 대문자로 쓴다

struct SomeStructure {
    // structure definition goes here
}


class SomeClass {
    // calss definition goes here
}

struct Resolution {
    var width = 0
    var height = 0
    var name: String?
}

class VideoMode {
    var resolution = Resolution()
    var interlacaed = false
    var frameRate = 0.0
    var name: String?
}

// 왜 class는 let type으로 선언해도 값 변경이 가능한데 struct는 불가능한가요?
//  -> 메모리 구조떄문이다 struct로 생성을 하면 스택에 객체를 만드는것이기 때문에 인스턴스 전체가 let 타입으로 선언이 되서 변경이 안되는 반면에 class 객체는 heap에 저장이 되고 그 메모리 주소가 let으로 되는 것이기 때문에 가능하다

// structs는 value type이다 인스턴스를 만들때 값을 설정할수 있다 (memberwise initializers)
let someResolution = Resolution(width: 12, height: 12, name: "hi")
print("The width of someResolution is \(someResolution.name ?? "bye")")

// let으로 선업 했을때 아래처럼 값을 변경 불가
//someResolution.width = 10

// classs는 인스턴스 선언할때 값 설정 불가 아래처럼 접근해서 해줘야 함 (!memberwise initializers)
// 아니면 init을 사용해서 초기값을 설정할수 있게 해줘야 한다
let someVideoMode = VideoMode()
// Can drill down into subproperties
someVideoMode.resolution.width = 1

print("The width of someVideo is \(someVideoMode.resolution.width)")


/*:
 ### Struct와 Enum은 Value Type
 
 A value tpe is type whose value is copied when its assigned to a variable or constant, or when its passed to a function
 
 Basic type of swift such as int, float, bool, and string are all value type
 
 It means that when you create new instances of enum or struct, that always copied when they're passed aroun in code
 
 > **_NOTE:_**
 “배열, 딕셔너리, 문자열과 같은 표준 라이브러리에 정의된 콜렉션은 최적화를 사용하여 복사 성능 비용을 줄입니다. 즉시 복사본을 만드는 대신에 이러한 콜렉션은 원본 인스턴스와 복사본 간에 요소가 저장된 메모리를 공유합니다. 콜렉션의 복사본 중 하나가 수정되면 요소는 수정되기 직전에 복사됩니다. 코드에서 보이는 동작은 항상 바로 복사가 일어나는 것처럼 보입니다”

 */
enum CompassPoint {
    case north, south, east, west
    mutating func turnNorth() {
        self = .north
    }
}
var currentDirection = CompassPoint.west
let rememberedDirection = currentDirection
currentDirection.turnNorth()

print("The current direction is \(currentDirection)")
print("The remembered direction is \(rememberedDirection)")
// Prints "The current direction is north"
// Prints "The remembered direction is west”

/*:
 ### Class is a Reference Type
 
 value type과 다르게 reference type은 값을 복사하는 것이 아니라 원래 있던 값을 참조하는 것이다
 
 예를 들어 1번인스턴스를 하나 만들고 값을 준 다음에 새로운 2번 인스턴스에 1번 인스턴스를 바인딩하면 값을 복사하는 것이 아니라 똑같은 값을 참조하는 것이기 때문에 2번 인스턴스에서 어떤 값을 바꾸게 되면 1번 인스턴스의 값도 바뀌게 된다
 
 따라서 class에서는 identity operators를 사용할 수 있다. (==) 과 (!==)를 통해 두 인스턴스가 같은 값을 참조하고 있는지에 대한 true, false를 알 수가 있다
 
 하지만 이 참조라는것이 c에서 같은 포인터처럼 direct하게 pointer하는 것은 아니기 떄문에 (*)를 쓰지 않아도 되고 만약 그런 포인터를 쓰고 싶으면 다른 방법을 이용해야 한다
 */







