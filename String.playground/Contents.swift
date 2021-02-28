import UIKit

// 3.1 字符串类型
var str = "Hello, playground"
var emtpyStr = ""  // 空字符串，字符串变量的值为空字符串与字符串变量的值为nil是两个完全不同的概念，如果一个Optional类型变量没有赋值，则其为nil，如果赋值为空字符串，则其并不是nil

// 整型、浮点型数据可以使用构造方法的方式来实现互相转换
print(Int(1.05))  // 1
print(Float(1))  // 1.0

// 字符串连接，使用+或\()
print("a" + "b")  // ab
print("a\(1)")  // a1
var c1 = 2
print("a\(c1)")  // a2

// 字符类型Character，占9个字节控件
var e: Character = "a"  // 单个字符
var e2: [Character] = ["a", "b"]  // 字符数组
var e3 = String(e2)  // 字符数组构建字符串

let name = "World"
for char in name {  // 遍历字符串字符
    print(char)
}


// 3.3 字符串常用方法
if emtpyStr.isEmpty {  // 判断是否为空字符串
    print("emtpyStr是空字符串")
}

var nilStr: String?
if let temp = nilStr, !temp.isEmpty  {
    print("nilStr非nil或空字符串")
}else {
    print("nilStr是nil或空字符串")  // nilStr是nil或空字符串
//    if nilStr!.isEmpty {  // Fatal error: Unexpectedly found nil while unwrapping an Optional value
//        print("temp是空字符串")
//    }else {
//        print("temp是nil")
//    }
}

var com1 = "a"
var com2 = "abcdefg"
var com3 = "a"
print(com1 == com2)  // false
print(com1 == com3)  // true
print(com1 < com2)  // true

var startIndex = com2.startIndex
var endIndex = com2.endIndex
print(startIndex)
print(endIndex)
// 获取某一个下标后一个下标对应的字符，index(after:)方法用来获取当前下标的后一位下标
print(com2[com2.index(after: startIndex)])  // b
// 获取某一个下标前一个下标对应的字符，index(before:)方法用来获取当前下标的前一位下标
print(com2[com2.index(before: endIndex)])  // g，在此为最后一个字符

// 子串
print(com2[startIndex...com2.index(startIndex, offsetBy: 4)])  // abcde，offsetBy参数传入的是下标移动的位数，向其中传入正数则下标向后移动相应位数，传入负数则下标向前移动相应位数
print(com2[com2.index(endIndex, offsetBy: -5)..<endIndex])  // cdefg

var range = com2.range(of: "bc")
com2.append("h")  // 追加字符串
print(com2)  // abcdefgh
com2.insert("x", at: com2.index(com2.startIndex, offsetBy: 2))
print(com2)  // abxcdefgh，从startIndex位置开始偏移2个字符
com2.insert(contentsOf: ["-", "-"], at: com2.startIndex)
print(com2)  // --abxcdefgh
com2.replaceSubrange(com2.startIndex...com2.index(com2.startIndex, offsetBy: 4), with: "hi")
print(com2)  // hicdefgh
print(com2.remove(at: com2.index(before:com2.endIndex)))  // 删除最后一位h
print(com2)  // hicdefg
print(com2.removeSubrange(com2.startIndex...com2.index(com2.startIndex, offsetBy: 2)))
print(com2)  // defg
com2.removeAll()  // 删除所有字符，此时为""
print(com2)

var string2 = "My name is abc"
print(string2.uppercased())  // 转大写MY NAME IS ABC
print(string2.lowercased())  // 转小写my name is abc

print(string2.hasPrefix("My"))  // true
print(string2.hasSuffix("abc"))  // true





