var hour = 50
let payPerHour = 10000
var salary = 0

if hour > 40 {
    let extraHours = hour - 40
    salary += extraHours * payPerHour * 2
    hour -= extraHours
} //scope : 코드블록 1개

salary += hour * payPerHour

print("철수가 받는 이번달 월급은 \(salary)원~")
// print(extraHours) error -> scope 내에 없음

