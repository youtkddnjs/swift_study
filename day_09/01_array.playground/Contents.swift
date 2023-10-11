import UIKit

//  22,13,4,67,7,12,98,23,70,5,53,43,82,19,37,16,8,32

// 배열로 구성하고 짝수들의 합을 구하세요

var arr = [22,13,4,67,7,12,98,23,70,5,53,43,82,19,37,16,8,32]

print("arr: \(arr)")

var tot = 0
var cnt = 0
for i in arr{
    if i % 2 == 0 {
        tot += i
        cnt += 1
        print(i, tot, cnt)
    }
}

print("\(tot) , \(tot/cnt)")


/*

 67,78,54,91,88,63,87,75,82    [0~100]

  합격 커트라인 : 70

  1. 합격자 인원수를 출력하세요

  2. 점수 중에서 최저점수 , 최고점수를 출력하세요

  3. 합격자들의 평균을 출력하세요


 */



arr = [67,78,54,91,88,63,87,75,82]

tot = 0
cnt = 0
var min = arr[0] , max = arr[0]

for i in arr {
    if i >= 70 {
        tot += i
        cnt += 1
    }
    
    if min > i {
        min = i
    }
    
    if max < i {
        max = i
    }
    
}

print("\(cnt), \(tot), \(tot/cnt)")
print("\(min) , \(max)")
