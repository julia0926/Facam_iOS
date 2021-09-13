import UIKit

let num = 2

switch num {
case 0...3:
    print("0~3 사이 이다")
case 10:
    print("10 이다")
default:
    print("나머지 ~")
}

//String
let pet = "cat"
switch pet {
case "dog", "cat":
    print("애완동물 ")
default:
    print("그 외~")
}

//홀짝 구분
let number = 20
switch number {
case _ where number % 2 == 0:
    print("짝수")
default:
    print("홀수")
}


var cordinate = (x: 0, y: 10)

switch cordinate {
case (0, 0):
    print("0, 0!!")
case (_, 0): //_는 뭐를 해도 상관 없음
    print("x축 !!")
case (0, let y):
    print("y축 !! \(y)")
case (let x, let y) where x == y:
    print("x == y : \(x),\(y)")
default:
    print("else~")
}
