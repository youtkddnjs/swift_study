import UIKit

var sArr = [101,202,303,404]
var sArr2:[Int]
var mArr2 = [
    [98,76,54],
    [12,34],
    [567,789,890]
]

var mArr1 = [
    [10,20,30],
    [11,22],
    sArr,
    Array<Int>(),
    Array(repeating: 5, count: 4),
    Array(0...6),
    mArr2[1] //,
    //sArr2
]

for a in  mArr1{
    print(a)
}



/*

 도형을 구현하세요

 도형의 속성 : 도형이름, 넓이, 둘레

 

                            넓이              둘레

 원 : 반지름            반지름*반지름*원주율         2*반지름*원주율

 직사각형 : 가로,세로.      가로 * 세로            (가로 + 세로) * 2

 직가삼각형 : 밑변,높이,빗변. 밑변 * 높이 / 2         밑변 + 높이 + 빗변

 

 6

 6,7

 8,10,17

 10,

 20,30

 12,10,20

 

 */


//1. 입력부
var shapes = [
    [6],
    [6,7],
    [8,10,17],
    [20,30],
    [10],
    [12,10,20]
]

var shName:[String] = []
let shTitle = ["","원","직사각형","직각삼각형"]
let PI = 3.14
var res = Array(repeating: [0,0], count: shapes.count)

//2. 연산부
for i in 0..<shapes.count{
    var sh = shapes[i]
    //print(sh.count,shTitle[sh.count])
    shName.append(shTitle[sh.count])
    
    if sh.count == 1{
        res[i][0] = Int(Double(sh[0] * sh[0]) * PI)
        res[i][1] = Int(Double(sh[0] * 2) * PI)
    }
    if sh.count == 2{
        res[i][0] = sh[0] * sh[1]
        res[i][1] = (sh[0] + sh[1]) * 2
    }
    if sh.count == 3{
        res[i][0] = sh[0] * sh[1] / 2
        res[i][1] = sh[0] + sh[1] + sh[2]
    }
}


//3. 출력부
for i in 0..<shapes.count{
    print("\(i) , \(shName[i] ), \(shapes[i]), \(res[i])")
}
print()
print()
/*
 커피 재료
 
                원두.   우유.     카라멜
 아메리카노  :     100
 아시아노   :     80.     70
 아프리카노  :      50.    40.     30
 
 
 주문서.   아메리카노, 아시아노, 아프리카노 ......
 
 원두, 우유, 카라멜의 전체 사용량을 출력하세요
 */
var menu = [
    [100],
    [80, 70],
    [50, 30, 30],
]
let menuTitle = ["","아메리카노","아시아노","아프리카노"]
var coffeeName:[String] = []
//var res2 = Array(repeating: [0,0], count: menu.count)
//2. 연산부
for i in 0..<menu.count{
    var tot2 = 0
    var tot:[Int] = []
    var sh = menu[i]
    print("sh : \(sh)")
    //print(sh.count,shTitle[sh.count])
    coffeeName.append(menuTitle[sh.count])
    for j in 0..<sh.count{
        tot2 += sh[j]
        print("\(i) , \(j) \(sh[j]), \(tot2)")
    }
    tot.append(tot2)
//    print(tot)
    menu.append(tot)
}

for i in 0..<menu.count{
//    print("\(i) , \(coffeeName[i] ), \(menu[i])")
    print("\(menu[i])")
}
