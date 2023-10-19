import UIKit

var arr = [11,33,88,11,66,88,77,33,22,88,44,88,55]
var ss:Set = [11,33,88,11,66,88,77,33,22,88,44,88,55]  //중복 X, 순서 X

print(arr)
print(ss)
print(arr[0])
//print(ss[0])
print(arr.count)
print(ss.count)
print(arr.contains(11), arr.contains(300))
print(ss.contains(11), ss.contains(300))

for s in ss{
    print(s)
}

var ss1 = Set<Int>()
var ss2:Set<Int> = []

ss.insert(1111)
ss.insert(2222)
print(ss)
var rr = ss.remove(55)
ss.remove(1234)
print(ss)
print(rr)
var arr1 = ss.sorted()
print(arr1, type(of: arr1))
print(ss.isEmpty)
ss.removeAll()
print(ss.isEmpty)
//ss.sort()

var lotto1:[Int] = []
var lotto2:Set<Int> = []

while true {
    
    let no = Int.random(in: 1...45)
    
    lotto1.append(no)
    lotto2.insert(no)
    
    if lotto2.count == 7 {
        break
    }
    
}

print("lotto1 : \(lotto1)")
print("lotto2 : \(lotto2)")


/*
 
 빙고를 구현해 주세요

 숫자 범위 : 1-> 100

 

 출력모양 : 5 x 5

 * * * * *

 * * * * *

 * * * * *

 * * * * *

 * * * * *
 
 
 
 
 */



var bingo:Set<Int> = []

while true {
    let no = Int.random(in: 1...100)
    
    bingo.insert(no)
    
    if bingo.count == 25 {
        break
    }
}

//print(bingo)

var cnt = 0
for b in bingo{
    var end = "\t"
    cnt += 1
    if cnt % 5 == 0 {
        end = "\n"
    }
    print(b , terminator: end)
}
