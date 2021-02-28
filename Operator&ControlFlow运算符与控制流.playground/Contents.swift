import UIKit

var p1 = 1
var p2 = 2
//print(p1 && p2)  // 与Objective-C语言不同，Swift语言中逻辑运算的操作数必须为严格的Bool类型

// 原组比较：从第1个元素开始比较，如果比较出了结果，就不再进行后面元素的比较运算，直接返回结果Bool值，如果没有比较出结果，那么继续依次比较后面的元素，直到比较出结果为止。
var tp1 = (2, 3, "4")
var tp2 = (3, 4, "5")
print(tp1 < tp2)  // true

// 条件运算符/三目运算符 ?:

// 空合并运算符??
var q: Int? = 8
var value: Int
value = q ?? 0  // 如果q不为nil，则value为q，否则为0
print(value)

// 区间运算符
var range1 = 0...10  // >=0且<=10
var range2 = 0..<10  // >=0且<10的半开区间
print(range1 ~= 8)  // 8是否在range1范围中
for index in 0...3 {
    print(index)
}

for index in 0..<3 {
    print(index)
}

// repeat-while等于OC的do/while
var j = 0
repeat {
    print("repeat while \(j)")
    j += 1
} while j < 10

var num = 3
switch num {
case 1...3:  // case子句的匹配条件也可以是一个区间范围
    print("1<=num<=3")
default:
    print("no charac")
}

// 元祖比较
var tuple = (0, 1)
switch tuple {
// 对元组中第一个元素进行捕获
case (let a, 1):
    print(a)
case(let b, 0):
    print(b)
// 捕获元组中两个元素
case(let a, let b):
    print(a, b)
default:
    print("")
}


// fallthrough，相当于OC的case分支不写break，会继续执行下面的case分支
var tuple1 = (0, 0)
switch tuple1 {
case (0, 0):
    print("0")
    fallthrough
case (_, 0):
    print("1")
default:
    print("default")
}

func func1(param: Int) {
    guard param > 0 else {  // param需满足大于0，否则返回
        return
    }
    print(param)
}




