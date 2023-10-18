import UIKit

var arr1 = [                        //1차원
    ["0_0",         "0_1",      "0_2",  "0_3"],   //arr1[0]
    ["1_0",         "1_1",      "1_2__qwer",  "1_3"],   //arr1[1]
    ["2_0",         "2_1",      "2_2",  "2_3"]    //arr1[2]
    
    //arr1[?][0],arr1[?][1],arr1[?][2],arr1[?][3]
]

var arr2:Array<Array<String>> = arr1
var arr3:[[String]] = arr1

arr2 = [ ["aaa"] , ["bbb"] ]
//arr3 = ["ccc"]
print("arr1 \(arr1), \(type(of: arr1)), \(arr1.count)")
print(arr1[0],  type(of: arr1[0]) , arr1[0].count )
print(arr1[1][2],  type(of: arr1[1][2] ) , arr1[1][2].count)

/*
  직사각형들의 넓이와 둘레를 구하세요
  각 직사각형의 가로,세로는 배열형태로 구성
 */

var rectangle = [
    [5,6],
    [20,10],
    [8,7],
    [9,12]
]

// 0 : 넓이 , 1: 둘레
var res1:[[Int]] = []

for rr in rectangle{
    //print(rr, rr[0]*rr[1], (rr[0]+rr[1]) * 2 )
    res1.append( [rr[0]*rr[1], (rr[0]+rr[1]) * 2] )
    //rr.append(contentsOf: [rr[0]*rr[1], (rr[0]+rr[1]) * 2] )
}

print(res1)

for i in 0..<rectangle.count{
    var rr = rectangle[i]
    rectangle[i].append(contentsOf: [rr[0]*rr[1], (rr[0]+rr[1]) * 2] )
    print(rectangle[i])
}


/*
 원시 데이터



국어  영어  수학   총점   평균
----------------------------------
77   71   73
57   51   53
97   91   93
67   61   63
87   81   83
 
 
 
 
 
 */


var exam = [
    [77,   71,   78],
    [57,   51,   59],
    [97,   91,   91],
    [67,   61,   64],
    [87,   81,   86]
]

for i in 0..<exam.count{
    var tot = 0
    for j in exam[i]{
        tot += j
    }
    exam[i].append(contentsOf: [tot, tot/exam[i].count])
    
}



for st in exam{
    print(st)
}

