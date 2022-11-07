//: [Previous](@previous)

import Foundation

//MARK: LSP 위배
/*
 리스코프 위배
 부모타입인 Rectangle에서 자식인 Square로 변경시 너비 구하는 식 달라짐
 정사각형은 직사각형이다.
 직사각형은 정사각형이 아니다.
 */
class Rectangle {
    let width: Int
    let height: Int
    
    func area() -> Int {
        return width * height
    }
    
    init(width: Int, height: Int) {
        self.width = width
        self.height = height
    }
    
}

class Square: Rectangle {
    override func area() -> Int {
        return width * width
    }
}

let r = Rectangle(width: 5, height: 4) //20
r.area()

let r2 = Square(width: 5, height: 4) //25
r2.area()
//: [Next](@next)

//만약 부모클래스 기능을 재정의 하게 되면 OCP 위배될수도

//MARK: LSP
protocol Shape {
    func area() -> Int
}

class LSPRectangle: Shape {
    private let width: Int
    private let height: Int
    
    func area() -> Int {
        return width * height
    }
    
    init(width: Int, height: Int) {
        self.width = width
        self.height = height
    }
}

class LSPSquare: Shape {
    private let width: Int
    
    func area() -> Int {
        return width * width
    }
    
    init(width: Int) {
        self.width = width
    }
}

