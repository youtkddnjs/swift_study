import Cocoa

var ff:(Int, String) -> Double = {
    (a:Int, b:String)->Double in  //함수 선언 부분
    
    print("클로저 1 실행 \(a), \(b)")
    
    return 123.456
}

print(ff, type(of: ff))
var rr = ff(10,"아기상어")
print(rr)

ff = {
    a, b in  //함수 선언 부분
    
    print("클로저 2 실행 \(a), \(b)")
    
    return 987.654
}
rr = ff(20,"엄마상어")
print(rr)
ff = {
   
    print("클로저 3 실행 \($0), \($1)") //$번호   : 매개변수 --> 번호 : 매개변수 순서
    
    return 987.654
}
rr = ff(30,"아빠상어")
print(rr)

let fns:[String: (Int,Int)->Int] = [
    "+":{ $0 + $1 },
    "-":{ $0 - $1 },
    "*":{ $0 * $1 },
    "/":{ $0 / $1 },
    "%":{ $0 % $1 }
]


var rr2 = fns["+"]!(7,8)
print(rr2)

({
    (a:Int, b:String)->Double in  //함수 선언 부분
    
    print("클로저 4 실행 \(a), \(b)")
    
    return 246.802
})(40,"할머니상어")


//숫자들의 합계를 출력하는 클로져를 구현하세요 -- 단 함수는 익명으로 한번만 사용하게 해주세요
({
    var tot = 0
    for i in $0{
        //print(i)
        tot += i
    }
    print("합계:\(tot)")
    
})([12,34,56,78,90])

({
    (arr:Int...) in     //가변매개변수로 클로저 처리시 매개변수 생략 불가
                        // 생략하려고 하면 매개변수를 Int형태로 낱개로 인식하게 됨
                        // (12,34,56,78,90) ==> ($0, $1, $2, $3, $4) 로 인지
    var tot = 0
    for i in arr{
        //print(i)
        tot += i
    }
    print("합계:\(tot)")
    
})(12,34,56,78,90)
