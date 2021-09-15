import UIKit

//Int형
func printTotal(price:  Int, count: Int) {
    print("Total : \(price * count)")
}
//Double형
func printTotal(price:  Double, count: Double) {
    print("Total : \(price * count)")
}
printTotal(price: 300, count: 2)


// In-out parameter

var value = 3
func increase(_ value: inout Int) {
    value+=1
    print(value)
}

increase(&value)

// Function as a param

func add (_ a: Int, _ b: Int) -> Int {
    return a + b
}
func substract(_ a: Int, _ b: Int) -> Int {
    return a - b
}
var function = add //함수도 변수에 할당 할 수 있다.
function(4, 2)
function = substract
function(4, 2)

// 파라미터로 넘길 때 같은 타입을 넘겨야 한다.
func printResult(_ function: (Int, Int) -> Int, _ a: Int, _ b: Int){
    let result = function(a,b)
    print("결과는 !! \(result)")
}
printResult(add, 4, 5)
printResult(substract, 4, 5)
