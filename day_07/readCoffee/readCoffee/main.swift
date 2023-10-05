/*
 커피를 주문 받으세요
 입력 내용 : x. 종료 , a:아메리카노, f:아프리카노, s:아시아노
 
 가격
 아메리카노 : 2300
 아프리카노 : 2700
 아시아노 : 2900
 
 주문종료 후
 커피 주문잔 수, 합계금액 출력하세요
 
 
 */

import Foundation
var tot = 0
var cnt = 0
while true {
    print("입력:", terminator: "")
    let ttt = readLine()!
    
    if ttt == "x"{
        break
    }
    cnt += 1
    switch ttt {
    case "a":
        print("아메리카노")
        tot += 2300
    case "f":
        print("아프리카노")
        tot += 2700
    case "s":
        print("아시아노")
        tot += 2900
    default:
        print("없음")
    }
}

print("주문종료: \(cnt) , \(tot)")

