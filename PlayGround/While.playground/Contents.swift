import UIKit

var i = 10
while i < 10 {
    print(i)
    
    if i==5 {
        print("5!!")
        break
    }
    
    i += 1
}

print("------do while과 같은 ")
i = 10
repeat {
    print(i)
    i += 1
} while i < 10
