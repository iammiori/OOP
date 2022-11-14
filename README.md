# OOP
OOP 특징을 Swift로 알아보기

## 객체지향 SOLID 원칙
<Blockquote>
SRP, OCP, LSP, ISP, DIP 에 대해 알아보고 코드에 적용해보기
📝 관련 상세한 내용은 블로그에 정리하고 있습니다. <br>
[블로그](https://velog.io/@iammiori/series/OOP)
</Blockquote>

### SRP (Single Responsibility Principle) ; 단일 책임 원칙
- class는 단한개의 책임(기능)을 가져야함
- 결합도를 낮추고 응집도를 높이기 위함
- [code에 적용](SOLID.playground/Pages/SRP.xcplaygroundpage/Contents.swift)
- [블로그정리](https://velog.io/@iammiori/SOLID-SRP)

### OCP (Open - Closed Principle) ; 개방 폐쇄 원칙
- 쉽게 확장이 되어야하고 (확장에는 열려있고), 기존 코드 변경없이 기능을 수정/추가 가능해야함 (변경에는 닫혀있다)
- 추상화와 상속을 통해 구현 가능
- [code에 적용](SOLID.playground/Pages/OCP.xcplaygroundpage/Contents.swift)
- [블로그정리](https://velog.io/@iammiori/SOLID-OCP)

## LSP (Liskov Substitution Principle) ; 리스코프 치환 원칙
- 하위 type의 객체는 상위 type의 객체에 가능한 행위를 수행할 수 있어야함
- ex) 정사각형, 직사각형 넓ㅇ 구하기 
