import UIKit

var greeting = "Hello, playground"


// Associated Value -> 추가적인 정보 정욕
enum Computer {
    case cpu(core: Int, ghz: Double) //
    case ram(Int, String)//
    case hardDisk(gb: Int)
}

// 옵셔널 타입은 열거형으로 구현되어 있다

// if let은 연관값을 꺼내 쓰는거다
// .none이랑 nill 은 동일하다

enum LoginProvider {
    case email(String)
    case facebook(Int, Int)
    case google
}

let userLogin: LoginProvider = LoginProvider.email("Hi")

switch userLogin {
case .email(let name): // 연관값을 let 바인딩 할수도 있다 -> 값을 name에 저장
    print("emial")
case let .facebook(num, nums): // 앞으로 꺼내서 바인딩 처리할수도 있다
    print("facebook")
case .google:
    print("google")
}


// Optional Enumeration
