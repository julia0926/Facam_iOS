import UIKit

let closedRange = 0...10
let halfRange = 0..<10

var sum = 0
for i in halfRange {
    print("\(i)")
    sum+=i
}
print("total = \(sum)")

//그래프 출력 가능 
var sinValue: CGFloat = 0
for j in closedRange {
    sinValue = sin(CGFloat.pi/4*CGFloat(j))
}

let name = "JIN"
for _ in closedRange {
    print ("--> name: \(name)")
} //10번 이름 출력


for i in closedRange { //
    if i % 2 == 0 {
        print("---> 짝수: \(i)")
    }
}
for i in closedRange where i % 2 == 0{ //for문에서 조건을 넣어 사용 가능 if 대신
    print("---> 짝수: \(i)")
}

//구구단
for i in closedRange {
    for j in closedRange {
        print("\(i) * \(j) = \(i*j)")
    }
}
