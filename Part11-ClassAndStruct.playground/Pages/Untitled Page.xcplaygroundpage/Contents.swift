import UIKit

// class 내부의 변수 함수를 member라고 한다
class Dog {
    var name = "강아지" // member중 변수는 "속성"
    var weight = 0.0
    

    
    func sit() { // member 중에서도 함수는 "메소드"
        print("\(self.name) 앉았습니다")
    }
}

// 보리랑 초코는 각자 다른 데이터이다. 보리의 데이터를 바꾼다 하더라도 초코의 데이터는 바뀌지 않는다
var bori = Dog()
bori.name
bori.weight

bori.name = "보리"
bori.name

var choco = Dog()
choco.name
choco.weight
choco.sit()



// struct 구조체

struct Bird {
    var name = "새"
    var weight = 0.0
    func fly() {
        print("날아갑니다")
    }
}
// 이렇게 enum class struct에서 찍어내는 것을 인스턴스라고 한다
// 특별히 클래스의 인스턴스는 객체(object)라고 한다
let aBird = Bird(name: "참새", weight: 15)


// 클래스는 정해진 주소를 참조하기 떄문에 복사본을 만드는것이 아니지만 구조체는 복사를 하는것이다



