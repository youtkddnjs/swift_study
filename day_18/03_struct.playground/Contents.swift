import Cocoa

//구조체 정의
struct AAA{
    var a = 10          //프로퍼티
    var b = "아기상어"
    var c = true
    
    func fn_1(){    //메소드
        print("AAA.fn_1() 실행")
    }
    
    func fn_2(){
        print("AAA.fn_2() 실행")
    }
}

var a1 = AAA()  //구조체 변수 선언 = 구조체 생성
print("a1: \(a1)")
print(a1.a)
print(a1.b)
print(a1.c)
a1.fn_1()
a1.fn_2()

var a2 = AAA(a:20,b:"엄마상어",c:false)

print("a2: \(a2)")
print(a2.a)
print(a2.b)
print(a2.c)
a2.fn_1()
a2.fn_2()
