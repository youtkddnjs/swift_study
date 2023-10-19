import UIKit

enum WeekDay1 { //enum 정의
    case sun, mon, tue, wed, thu, fri, sat // 원소를 정의한다 : 변경불가
}

//print(WeekDay1)
print(WeekDay1.sun)

var wd = WeekDay1.mon
print(wd, type(of: wd))
//wd = WeekDay1(rawValue:"tue")
//WeekDay1.append(aaa)
//WeekDay1.append("aaa")
//WeekDay1.append(WeekDay1.sun)

enum WeekDay2:String { //rawValue
    case        sun, mon="월", tue, wed="수", thu,   fri,   sat
    //rawValue  "sun","월",  "tue",  "수",   "thu", "fri", "sat"
}

var wd2 = WeekDay2.sun
print(wd2, wd2.rawValue)
wd2 = WeekDay2.mon
print(wd2, wd2.rawValue)
wd2 = WeekDay2(rawValue:"수")!
print(wd2, wd2.rawValue)

enum WeekDay3:Int { //rawValue
    case        sun, mon, tue, wed, thu, fri, sat
    //rawValue   0    1    2    3    4    5    6
}
var wd3 = WeekDay3.sun
print(wd3, wd3.rawValue)
wd3 = WeekDay3.wed
print(wd3, wd3.rawValue)

enum WeekDay4:Int { //rawValue
    //case        sun, mon = 10, tue, wed = 200, thu, fri, sat = 10 rawValue 중첩불가
    case        sun, mon = 10, tue, wed = 200, thu, fri, sat
    //rawValue   0    10        11      200     201  202  203
}
var wd4 = WeekDay4.sun
print(wd4, wd4.rawValue)
wd4 = WeekDay4.tue
print(wd4, wd4.rawValue)
wd4 = WeekDay4.wed
print(wd4, wd4.rawValue)
wd4 = WeekDay4.fri
print(wd4, wd4.rawValue)
wd4 = WeekDay4(rawValue:201)!
print(wd4, wd4.rawValue)



enum Size:Int{
    case S = 90 , M = 95, L = 100 , XL = 105, XXL = 110
}

let price:[Size:Int] = [Size.M:30000 , .L:32000, .XL:31500]

let mySize = 105

let ss = Size(rawValue: mySize)!
print(price[ss]!)



/*
 커피종류
 am,          af,       as
 2200        2500       2900
 
 총 커피 주문 금액을 출력하세요
 
 ex) 아메리카노, 아시아노, 아메리카노, 아프리카노, 아시아노, 아메리카노
 
 */
 
