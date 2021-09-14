import UIKit

func printName() {
    print("My name is jiin")
}
printName()

//파라미터 1개
func printMulti(value: Int){
    print("\(value) * 10 = \(value*10)" )
}
printMulti(value: 5)

//_ 파라미터 이름을 쓰지 않을 때 사용
// ( external internal: type )
func printTotalPrice(_ price: Int, 갯수 count: Int){
    print("Total Price: \(price * count)")
}
printTotalPrice(1400, 갯수: 30)
printTotalPrice(1400, 갯수: 10)
printTotalPrice(1400, 갯수: 5)

//함수에 default 값 넣을 수 있다.
func printTotalPrice2(price: Int = 1500, 갯수 count: Int){
    print("Total Price2: \(price * count)")
}

printTotalPrice2(갯수: 4)
printTotalPrice2(price: 3000, 갯수: 3)

// 파라미터와 반환 값 
func totalPrice(price: Int, count: Int) -> Int {
    let totalPrice = price * count
    return totalPrice
}

let calculated = totalPrice(price: 10000, count: 77)
print("값은 !! : \(calculated)")
