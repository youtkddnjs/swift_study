import UIKit


print("1. 배열 선언 및 생성 >>>>>>>")
var arr1 = [30,20,50,20,50,40]
var arr2:Array<Int> = [30,20,50,20,50,40]
var arr3:[Int] = [30,20,50,20,50,40]
//var arr4 = []
var arr5:Array<Int> = []
var arr6:[Int] = []
var arr7 = Array<Int>()
//var arr8 = Array<Int>[]
//var arr9 = [Int][]
var arr10 = [Int]()
print("arr1: \(arr1), \(type(of:arr1))")
print("arr2: \(arr2), \(type(of:arr2))")
print("arr3: \(arr3), \(type(of:arr3))")
print("arr5: \(arr5), \(type(of:arr5))")
print("arr6: \(arr6), \(type(of:arr6))")
print("arr7: \(arr7), \(type(of:arr7))")
print("arr10: \(arr10), \(type(of:arr10))")

print("2. 배열 대입 >>>>>>>")
var arr11 = arr1
print("arr1  : \(arr1)")
print("arr11 : \(arr11)")
arr1[1] = 2222
print("arr1  : \(arr1)")
print("arr11 : \(arr11)")


print("3. 배열 변경 >>>>>>>")
arr1 = [30,20,50,20,50,40]
print("arr1 : \(arr1)")
//arr1[6] = 66
arr1.append(66)
print("append : \(arr1)")
arr1.insert(77, at: 2)
print("insert : \(arr1)")
arr1.append(contentsOf: [123,456])
print("append(contentsOf) : \(arr1)")
arr1.insert(contentsOf: [98,76], at:5)
print("insert(contentsOf) : \(arr1)")
var a = arr1.remove(at: 3)
print("remove : \(arr1)")
print("a : \(a)")
a = arr1.removeFirst()
print("removeFirst : \(arr1)")
print("a : \(a)")
a = arr1.removeLast()
print("removeLast : \(arr1)")
print("a : \(a)")
var arr12 = arr1.dropFirst()
print("dropFirst : \(arr12), \(type(of: arr12))")
print("arr1 : \(arr1)")
arr12 = arr1.dropLast()
print("dropLast : \(arr12), \(type(of: arr12))")
print("arr1 : \(arr1)")

var arr13 = arr1.removeSubrange(2...5)
print("removeSubrange : \(arr1)")
print("arr13 : \(arr13), \(type(of: arr13))")
