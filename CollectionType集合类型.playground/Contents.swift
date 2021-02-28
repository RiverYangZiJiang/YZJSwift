import UIKit
// 数组Array都是可变的
// Int型数组
var arry1: [Int]
var arry2: Array<Int>

// 空数组
arry1 = []
arry2 = Array()

// 非空数组
arry1 = [1, 2, 3]
arry2 = Array(arrayLiteral: 1, 2, 3)

// 创建大量相同元素的数组
var array3 = [String](repeating: "0", count: 5)
var array4 = Array(repeating: 1, count: 10)

// 数组拼接，使用+
var arry5 = [1, 2] + [3, 4]

// 数组常用方法
var array = [1, 2, 3, 4, 5]
array.count  // 数组个数
if array.isEmpty {
    print("array为空数组")
}

var subArray = array[0...3]  // 获取区间元素[1, 2, 3, 4
var b = array.first
var c = array.last
array[0] = 0
array[0...3] = [1, 2, 3, 4]  // 修改数组中区间范围的元素
array.append(5)  // 追加元素
array.append(contentsOf: [6, 7])  // 向数组中追加一组元素
array.insert(8, at: 4)  // 插入一个元素
array.insert(contentsOf: [-2, -1], at: 0)  // 插入一组元素
array.replaceSubrange(0...2, with: [0, 1])  // 替换一个范围内的元素
array.remove(at: 1)
array.removeFirst()
array.removeLast()
array.removeFirst(2)  // 移除前几位元素
array.removeLast(2)  // 移除后几位元素
array.removeSubrange(0...2)  // 移除一个范围内的元素
array.removeAll()  // 删除所有元素
if array.contains(1) {  // 判断是否包含某个元素
    print(true)
}

let arrayLet = [1, 2, 3, 4]
let arrayLet2 = [(1, 2), (2, 3), (3, 4)]  // (Int, Int)型数组
// 直接遍历
for item in arrayLet {
    print(item)
}
for item in arrayLet.enumerated() {  // 返回一个元组集合，将数组的下标和对应元素返回
    print(item)
}
// 角标遍历
for index in arrayLet2.indices {
    print(arrayLet2[index])
}

var arraySort = [1, 5, 3, 7]
arraySort = arraySort.sorted()  // 从小到大[1, 3, 5, 7]
print(arraySort.max() ?? 1)  // 数组中最大值
print(arraySort.min() ?? 1)  // 数组中最小值1


// Set集合类型都是可变的
var set1: Set<Int> = [1, 2, 3, 4]
var set2 = Set(arrayLiteral: 1, 5, 3, 4)
set1.count
if set1.isEmpty {
    print("set1为空")
}
if set1.contains(1) {
    print("set1包含1")
}
print(set1.intersection(set2))  // 交集[1, 3, 4]
print(set1.union(set2))  // 并集[3, 1, 4, 2, 5]
print(set1.subtracting(set2))  // 差集/补集[2]
print(set1.symmetricDifference(set2))  // 交集的补集[2, 5]
set1.max()  // 最大值
set1.min()  // 最小值
set1.insert(5)
set1.remove(1)
set1.removeAll()


var set5: Set<Int> = [1, 2]
var set6: Set<Int> = [3, 2]
var set7: Set<Int> = [1, 2, 3]
var set8: Set<Int> = [1, 2, 3]
set5.isSubset(of: set7)  // 子集
set7.isSuperset(of: set5)  // 超集
set5.isStrictSubset(of: set7)  // 真子集
set7.isStrictSuperset(of: set8)  // 真超集

// 字典Dictionary都是可变的，key及value可以为任意类型
var dic1: [Int: String] = [1 : "one", 2 : "two"]
var dic2: Dictionary<Int, String>
var dic4: [Int: Int] = [:]  // 空字典
var dic5: Dictionary<Int, Int> = Dictionary()
dic1.count
if dic1 .isEmpty {
    print("dic1字典为空")
}
if dic4 .isEmpty {
    print("dic4字典为空")
}

dic1[1] = "o"
dic1[3] = "three"  // 如果key不存在，则新增
dic1.updateValue("4", forKey: 4)  // 存在才更新
print(dic1)

dic1.removeValue(forKey: 1)
print(dic1)
//dic1.removeAll()

for item in dic1 {
    print("dic1: \(item)")
}
for item in dic1.keys {
    print("dic1 keys: \(item)")
}
for item in dic1.values {
    print("dic1 values: \(item)")
}
for (key, value) in dic1 {
    print("\(key) : \(value)")
}
for item in dic1.keys.sorted() {  // 排序遍历
    print("dic1 keys: \(item)")
}






