import UIKit
// 2.1 变量与常量
var str = "Hello, playground"
var str1: String = "Hello, yzj"  // 字符串变量，String可省略，编译器可根据值类型推断
print(str)

// 命名规范：常量变量首字母会小写，类名、枚举名、结构体名首字母会大写

// 2.2 基本数据类型
var num: Int = 10
var age: UInt = 10  // 无符号，在64位的机器上为UInt64，在32位的机器上为UInt32
var bitNum = MemoryLayout<UInt>.size;  // MemoryLayout获取内存相关信息
print(bitNum)  // 8字节
print("max: \(Int.max)" + ", min: " + String(Int.min))  // 最大值最小值

var bool1: Bool = true
//var bool2: Bool = 0  // Bool类型十分严格，只有true和false两种值。Type 'Int' cannot be used as a boolean

// 2.4 元组、可选值类型
// 2.4.1 元组允许一些并不相关的类型进行自由组合成为新的集合类型，元组使用方便，然而其只适用于简单数据的组合，对于结构复杂的数据，要采用结构体或者类来实现。
var pen: (name: String, price: Int) = ("钢笔", 2)
print(pen.name)  // 钢笔
print(pen.1)  // 2，通过下标访问

var car: (String, Int) = ("奔驰", 2)  // 不指定参数名称，通过下标访问


// 2.4.2 可选值类型Optional
// Swift中普通的类型是不允许为nil的，当然也就不可以与nil进行比较运算，
//var varNil = nil  // error: 'nil' requires a contextual type
//print(varNil)
var obj: String?  // 如果一个变量在逻辑上可能为nil，则开发者需要将其包装为Optional类型
if obj == nil {
    print(obj)  // nil，Optional类型如果没有赋值则为nil
}

var objNotNil: String? = "HS"
if objNotNil != nil {
    print(objNotNil)  // Optional("HS")，没有拆箱
    print(objNotNil!)  // HS，使用!拆箱获取值
}
// 上面代码演示的编程结构在实际应用中十分广泛，因此Swift语言还提供了一种if-let语法结构来进行Optional类型值的绑定操作
if let tmp = objNotNil {  // 有iflet的snippet
    print(tmp)  // HS
}else {
    objNotNil = "hs"
    print(objNotNil!)
}

// 多个Optional类型值的绑定，之间用逗号隔开。在同时进行多个Optional类型值的绑定时，只有所有Optional值都不为nil，绑定才会成功，代码执行才会进入if为真的代码块中
var obj1: Int? = 1
var obj2: Int? = 2
if let temp1 = obj1, let temp2 = obj2, temp1 < temp2 {
    print("obj1 < obj2")
}

// 2.5 为类型取别名typealias
typealias Price = Int
var penPrice: Price = 100

// 2.6 练习
// 编写一个样品质量检测器，当样品的质量大于30单位的时候，输出合格，输入样品可能为空
var quality: Int? = 29
if let temp1 = quality, temp1 > 30 {
    print("temp1: " + String(temp1))
}
quality = 31
if let temp2 = quality, temp2 > 30 {
    print("temp2: " + String(temp2))  // temp2: 31
}





