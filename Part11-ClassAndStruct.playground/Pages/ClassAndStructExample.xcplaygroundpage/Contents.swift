import UIKit

// 애플은 상속이 필요없거나 왠만하면 구조체를 사용하라고 권장하고 있다 (클래스가 더 느리다, 데이터 관리를 해줘야 한다)
// 객체지향의 4대 특징 (추상화, 캡슐화, 상속성, 다형성)

class Book {
    var name: String
    var price: Int
    var company: String
    var author: String
    var pages: Int
    
    init(name: String, price: Int, company: String, author: String, pages: Int) {
        
        self.name = name
        self.price = price
        self.company = company
        self.author = author
        self.pages = pages
        
    }
}

var swiftBook = Book(name: "Swift", price: 100, company: "Apple", author: "Steve", pages: 250)


