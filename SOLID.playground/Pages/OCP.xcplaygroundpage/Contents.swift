//: [Previous](@previous)

import Foundation

//MARK: enum
/*
 만약, 더블치즈 버거를 추가하고 싶다면?
 */
enum Hamburger {
    case cheese
    case avocado
}

class OrderHamburger {
    let hamburger: Hamburger
    init(hamburger: Hamburger) {
        self.hamburger = hamburger
    }
    
    func order() {
        switch hamburger {
        case .cheese:
            print("치즈버거 주세요")
        case .avocado:
            print("아보카도버거 주세요")
        }
    }
}

//MARK: OCP ; Protocol 활용하여 확장은 쉽게 (확장은 열려있고), 그리고 확장시 기존 코드 수정하지 않게끔 (변경은 닫혀있고)
/*
 - 추상화와 상속 통해 구현 가능
 - 유연함 증가
 */
protocol HamburgerProtocol {
    func order()
}

struct Cheese: HamburgerProtocol {
    func order() {
        print("치즈버거 나왔어요")
    }
}

struct Avocado: HamburgerProtocol {
    func order() {
        print("아보카도버거 나왔어요")
    }
}

//더블치즈 추가하면?
struct DoubleCheese: HamburgerProtocol {
    func order() {
        print("더블치즈버거 나왔어요")
    }
}

class OrderHamburger2 {
    let hamburger: HamburgerProtocol
    init(hamburger: HamburgerProtocol) {
        self.hamburger = hamburger
    }
    func orderHamburger() {
        hamburger.order()
    }
}

OrderHamburger2(hamburger: DoubleCheese()).orderHamburger() //더블치즈버거 나왔어요
//: [Next](@next)
