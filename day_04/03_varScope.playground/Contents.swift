import Cocoa

var a = 10      //외부변수
var c = 30
var d:Int
if true{
    var b = 222 //내부변수 -- 선언된 구간에서만 호출 가능
    //print("if 실행 1 \(a), \(b), \(c), \(d)")   //초기화 하지 않은 변수 호출 불가
    print("if 실행 1 \(a), \(b), \(c)")   //외부변수 c 호출
    a = 111     //외부변수에 값 대입
    var c = 333 //내부변수로 외부변수명과 중첩 선언(에러발생 안함)
    d = 444
    print("if 실행 2 \(a), \(b), \(c), \(d)")   //내부변수 c 호출
    
    if true{
        
    }
    
} else {
    d = 4567
}

//print("if 종료 \(a), \(b)")  // if 구간 안에서 선언된 내부변수 외부에서 호출 불가
print("if 종료 \(a), \(c), \(d)")
