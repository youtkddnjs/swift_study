import Cocoa

//클래스 정의
class AAA{
    
    //프로퍼티
    var name = "정우성"
    var age = 52
    var marriage = false
    
    //메소드
    func fn_1(){
        print("AAA.fn_1() 실행")
    }
    func fn_2(){
        print("AAA.fn_2() 실행 \(name) , \(age), \(marriage)")
    }
    
    init(){
        print("AAA 생성자")
    }
    init(name:String, _ aa:Int, _ mm:Bool){//overloading : 메소드 이름이 같으나 매개변수가 달라 다른 메소드로 인식
        
        // name ==> 프로퍼티와 매개변수, 지역변수 중첩가능
        //  self.프로퍼티명  --> 다른 변수들과 구분지어 프로퍼티 명시
        print("AAA 사용자 정의 생성자: \(name) , \(aa), \(mm) , \(self.name)")
        age = aa
        marriage = mm
        self.name = name
    }
    
}

//구조체 정의
struct BBB{
    //프로퍼티
    var name = "정남성"
    var age = 48
    var marriage = false
    
    //메소드
    func fn_1(){
        print("BBB.fn_1() 실행")
    }
    func fn_2(){
        print("BBB.fn_2() 실행 \(name) , \(age), \(marriage)")
    }
}

var a1 = AAA(name:"현빈", 43, true)
//var a2 = AAA(name:"정북성",age:35,marriage: true)
var a3 = AAA()

var b1 = BBB()
var b2 = BBB(name:"정좌성",marriage: true)

print("a1 \(a1) ,\(a1.name), \(a1.age) ,\(a1.marriage)" )
print("b1 \(b1) ,\(b1.name), \(b1.age) ,\(b1.marriage)" )
print("b2 \(b2)" )
a3.name = "장동건"
a3.age = 27
a3.marriage = true
a1.fn_1()
a1.fn_2()
a3.fn_1()
a3.fn_2()
print("-------")
b1.fn_1()
b1.fn_2()
b2.fn_1()
b2.fn_2()

class Stud{
    var name:String //프로퍼티는 선언시 초기값이 있어야 한다. --> 초기화 하지 않을 경우 optional 처리한다.
                    // 생성자로 초기화 할 경우 선언시 초기화 하지 않아도 된다.
    var jum:[Int]
    var tot = 0, avg = 0
    
    //사용자 정의 생성자 선언시 기본생성자는 없어짐
    // 기본 생성자가 필요할 경우 오버로딩하여 선언해야 한다.
    init(_ name:String, _ jum:Int...){//생성자 --> 초기화 하지 않은 프로퍼티는 생성자에서 초기화 해야 한다.
        self.name = name
        self.jum = jum
        
        calc()
    }
    func calc(){
        self.tot = 0
        for i in jum {
            tot += i
        }
        avg = tot / jum.count
    }
    
    func ppp(){
        print("\(name)\t\(jum)\t\(tot)\t\(avg)")
    }
}

//var st = Stud() 기본생성자를 선언하지 않아 에러발생
var st1 = Stud("한가인",77,78,72)  //선언한 사용자 정의생성자로 생성
st1.ppp()

print("---------")
var studs = [
    Stud("차은우", 77,78,72),
    Stud("콜라은우", 57,58,52),
    Stud("맥주차은우", 97,98,92),
    Stud("커피은우", 67,68,62),
    Stud("우유은우", 87,88,82)
]

for st in studs{
    st.ppp()
}

/*
직사각형 클래스를 구현하세요
 클래스명 : Rectangle
 생성시 가로, 세로 입력
 
 출력 메소드 실행시 가로,세로, 넓이,둘레
 
 직사각형 5개
 */
 
