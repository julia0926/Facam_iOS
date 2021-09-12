let a = "Tom"
let b = "Jazy"

let isTom = b == "Tom"
let isMale = true

let tomAndMale = isTom && isMale //and (false)
let tomOrMale = isTom || isMale // or (true)

// 삼항연산자
let Msg: String = isMale ? "He" : "She"
print(Msg)
