import Cocoa

class AAA{
    var a = 10
    let b = 20
    
    var c:Int{ //연산 프로퍼티
        get{
            print("c get 실행")
            return 30   //프로퍼티 자료형에 맞추어 리턴
        }
    }
    var d:Int{ //연산 프로퍼티
        
        print("d get 실행")
        return 40   //프로퍼티 자료형에 맞추어 리턴
        
    }
    var e:Int{
        get{//호출시 출력
            print("e get 실행")
            return 50
        }
        set(qwer){ //대입시 출력
            print("e set 실행 \(qwer)")
        }
    }
    /*
    var f:Int{
        set(qwer){   set 만 선언 불가
            print("f set 실행 \(qwer)")
        }
    }*/
    
    var g:Int{
        get{//호출시 출력
            print("g get 실행")
            return 70
        }
        set{ // 매개변수가 없을 경우 newValue 사용
            print("g set 실행 \(newValue)")
        }
    }
}

var aa = AAA()
aa.a = 111
//aa.b = 222  상수이어서 불가
//aa.c = 333  get-only
//aa.d = 444
aa.e = 555
aa.g = 777
print("\(aa.a) , \(aa.b) , \(aa.c) , \(aa.d), \(aa.e), \(aa.g)")

class Stud{
    var name:String
    var jum = [0,0,0]
    
    init(_ name:String, _ eng:Int, _ mat:Int){
        self.name = name
        jum[1] = eng
        jum[2] = mat
    }
    
    var kor:Int{
        get{
            return jum[0]
        }
        set{
            jum[0] = newValue
        }
    }
    
    var tot:Int{
        var buf = 0
        for j in jum{
            buf += j
        }
        return buf
    }
    
    var avg:Int{
        
        return tot/jum.count
    }
    
    func ppp(){
        print("\(name)\t\(jum)\t\(tot)\t\(avg)")
    }
}

var st = Stud("장동건",72,81)
print(st.tot)
print(st.avg)
st.ppp()
st.kor = 78
print(st.tot)
print(st.avg)
st.ppp()

/*
 원 클래스를 구현하세요
 
 생성시 반지름 입력
 
 넓이와 둘레 : get-only
 
 출력 : 반지름, 넓이, 둘레
 
 
 */

class Circle{
    let r:Double, PI = 3.141592
    
    init(_ r:Double){
        self.r = r
    }
    var area:Double{
        return PI * r * r
    }
    var border:Double{
        return PI * 2 * r
    }
}
var cc = Circle(5)
print("\(cc.r)\t\(cc.area)\t\(cc.border)")
