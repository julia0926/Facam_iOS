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
