import Cocoa

// 함수 정의
//함수명 : fn_1
//매개변수 : name:String, age:Int
//리턴형 : String
//리턴값 : "아기상어"
func fn_1(name:String, age:Int)->String{
    print("fn_1() 실행 \(name) , \(age)")
    return "아기상어"
}

func fn_2(){
    print("fn_2() 실행 : param : X, ret : X")
    //return 1234
    //return  생략 가능
}

func fn_3(name:String, age:Int)->Void{  // Void : 리턴이 없는 형태
    print("fn_3() 실행 \(name) , \(age), ret: X")
}
func fn_4()->String{
    print("fn_4() 실행 : param : X")
    return "엄마상어"
}
var rr = fn_1(name:"장동건", age:52) //함수호출 -> 매개변수를 맞추어야 한다
print("리턴 : \(rr)")
var r2 = fn_2()
//fn_2(name:"장동건", age:52)
print("리턴 : \(r2)")
fn_3(name:"장서건", age:47)
var r4 = fn_4()
print("리턴 : \(r4)")


func circle(r:Double){
    let area = r * r * 3.14
    let border = r * 2 * 3.14
    print("원의 넓이 : \(area), 둘레 : \(border)")
}

circle(r:5)
circle(r:10)
circle(r:16)


//직사각형의 둘레와 넓이를 출력하는 함수를 정의 , 호출 하세요
// 둘레 : (가로+세로)*2,   넓이 : 가로*세로

func rectangle(w:Int, h:Int){
    
    let area = w * h
    let border = (w + h) * 2
    print("직사각형의 넓이 : \(area), 둘레 : \(border)")
}

rectangle(w: 5, h: 6)
rectangle(w: 10, h: 20)
rectangle(w: 8, h: 7)
rectangle(w: 5, h: 4)
