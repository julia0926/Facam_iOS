import UIKit

func fullName(_ last: String, _ first: String){
    print("1. 이름은 \(last) \(first)입니다.")
}
fullName("Park", "john")
func fullName2(_ last: String, _ first: String) -> String{
    let fullName = last + first
    return fullName
}
print("2. 이름은 : \(fullName2("kim", "jiin"))")
