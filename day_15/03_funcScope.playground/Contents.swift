import Cocoa

var a = 10, e = 50, f = 60

func fn_1(b:Int, d:Int, f:Int){ //매개변수와 전역변수 중첩가능 - 매개변수로 인식
    //a : 전역변수 - 함수 외부에서 선언
    //b : 매개변수
    //c : 지역변수 - 함수 내부에서 선언
    var c = 30
    
    //변수 이름이 지역에 따라 중첩할 경우
    // 선언 전에는 이전에 지정된 변수가 호출
    print("fn_1() 시작 \(a) , \(b) , \(c), \(d), \(e), \(f)")
    
    a = 111
    //b = 222  매개변수는 상수, 대입 불가
    c = 333
    var d = 444 //지역변수와 매개변수, 전역변수 모두 중첩가능
    var e = 555 // 접근 우선순위는 작은 영역부터 순차적
    print("fn_1() 끝  \(a) , \(b) , \(c), \(d), \(e), \(f)")
}

fn_1(b: 20, d:40, f:666)

print("main  a:\(a), e:\(e), f:\(f)")
//print("main: \(b)"). 매개변수와 지역변수는 함수 외부에서 접근 불가
//print("main: \(c)")
