import UIKit

var carName: String? //Optional로 설정
carName = nil
carName = "Tank"

var myLove: String? = nil

let num = Int("10") //타입 변환이 성공 or 실패 할 수 있기 때문에 int optional임

// 박스안에 value가 있음
//print(carName) //Optional("Tank")

// 1. Forced unwrapping : 박스에 값을 꺼냄 !
print(carName!) //Tank
// 2. Optional binding (if let)
if let unwrap = carName {
    print(unwrap)
}else{
    print("Car 없음")
}

//3. 일반적
func printPasedInt(from: String) {
    if let parsedInt = Int(from){
        print(parsedInt)
    }else{
        print("Int로 안바뀜")
    }
}
printPasedInt(from: "100")
printPasedInt(from: "Hello") //숫자로 파싱이 안됨

//3. Optional binding (guard) : 부드럽게 박스 까보자 2
//deaph를 줄일 수 있는 방법(복잡성 줄임) - guard 키워드
func printPasedInt2(from: String) {
    guard let parsedInt2 = Int(from) else{
        print("Int로 안바뀜")
        return
    }
    print(parsedInt2)
}
//4 : Nil coalescing : 박스를 까봤더니, 값이 없으면 디폴트 값을 줘보자
let myCarName: String = carName ?? "모델 S" //carName이 nil이면 모델 S 값을 넣어줘라


//도전 과제
//1. Optional 변수 있는지 없는지 확인
var myFavoriteFood: String? = "Chicken"
if let food = myFavoriteFood{
    print(food)
}else {
    print("없다!")
}
//Optional 파라미터 입력받아 출력 
func printNickName(_ name: String?){
    guard let nickName = name else {
        print("String이 아님")
        return //return문이 필요하다 !
    }
    print(nickName)
}
printNickName("Julia")
