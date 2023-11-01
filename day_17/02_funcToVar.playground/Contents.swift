import Cocoa

func fn_1(){
    print("fn_1() 실행")
}
func fn_2(){
    print("fn_2() 실행")
}

print(type(of: fn_1) )

var ff:()->() //함수를 대입받는 변수
ff = fn_1
ff()
ff = fn_2
ff()

func twoGo(_ arr:[Int])->Int{
    return arr[2]
}
func totGo(_ arr:[Int])->Int{
    var tot = 0
    for i in arr{
        tot += i
    }
    return tot
}
func headTailGo(_ arr:[Int])->Int{
    return arr[0] + arr.last!
}

let fnArr = [twoGo, totGo, headTailGo]

let aaa = [21,55,88,11,44,66,22,33]
var res = fnArr[0](aaa)
print(res)
res = fnArr[1](aaa)
print(res)
res = fnArr[2](aaa)
print(res)

/*
 
커피숍 메뉴 주문을 구현하세요
메뉴
 아메리카노 : 2200, 아프리카노 : 2300,  아시아노 : 2500
 
 주문방식 : 메뉴, 수량 을 입력. ==> 출력 : 방식, 메뉴, 수량, 금액
 매장(),
 포장() - 포장비 + 100,
 배달() - 배달비 + 3000
 
 */

let menu = ["아메리카노" : 2200, "아프리카노" : 2300,  "아시아노" : 2500]

func mejang(_ mm:String, _ cnt:Int){
    print("매장 => \(mm) (\(cnt)) : \(menu[mm]! * cnt)")
}
func takeout(_ mm:String, _ cnt:Int){
    print("포장 => \(mm) (\(cnt)) ")
    print("포장비 : 100 => \(menu[mm]! * cnt + 100)")
}
func delivery(_ mm:String, _ cnt:Int){
    let tot = menu[mm]! * cnt
    print("가격 => \(mm) (\(cnt)) \(tot) ")
    print("금액 + 배달비용(3000) => \(tot + 3000)")
}

let order = ["매장":mejang , "포장":takeout, "배달":delivery]
order["매장"]!("아프리카노", 3)
order["포장"]!("아시아노",2)
order["배달"]!("아메리카노",3)
