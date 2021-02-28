import UIKit

print("abc")

// 返回Optional类型值的函数：开发者可以通过返回Optional可选值类型来标识函数执行是否成功，在调用函数时使用if-let结构做安全性检查
func myFunc4(param: Int)->Int? {
    guard param > 100 else {
        return nil
    }
    return param - 100
}

if let tmp = myFunc4(param: 101) {
    print(tmp)
}
