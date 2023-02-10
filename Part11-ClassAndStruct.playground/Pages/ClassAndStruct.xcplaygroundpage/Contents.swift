import UIKit

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
// structs는 value type이다 인스턴스를 만들때 값을 설정할수 있다
let someResolution = Resolution(width: 12, height: 12, name: "hi")
print("The width of someResolution is \(someResolution.name ?? "bye")")

// let으로 선업 했을때 아래처럼 값을 변경 불가
//someResolution.width = 10

// classs는 인스턴스 선언할때 값 설정 불가 아래처럼 접근해서 해줘야 함
let someVideoMode = VideoMode()
// Can drill down into subproperties
someVideoMode.resolution.width = 1

print("The width of someVideo is \(someVideoMode.resolution.width)")

