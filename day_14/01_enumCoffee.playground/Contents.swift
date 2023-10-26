import Cocoa

/*
 커피종류
 am,          af,       asa
 2200        2500       2900
 
 총 커피 주문 금액을 출력하세요
 
 ex) 아메리카노, 아시아노, 아메리카노, 아프리카노, 아시아노, 아메리카노
 
 */

enum Coffee:String{
    case am="아메리카노" , af="아프리카노" , asa="아시아노"
}

let price:[Coffee:Int] = [
    .am:2200, .af:2500 , .asa:2900
]

var dd1:[String:Int] = ["사자":100,"토끼":200]
var dd2 = [
    Coffee.am:2200, Coffee.af:2500 , Coffee.asa:2900
]

let order = "아메리카노,아시아노,아메리카노,아프리카노,아시아노,아메리카노".split(separator: ",")

var tot = 0
for od in order{
    tot += price[Coffee(rawValue: String(od))!]!
    print(od, tot)
    
}

print( tot)
