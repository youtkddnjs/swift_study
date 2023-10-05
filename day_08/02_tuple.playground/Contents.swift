import Cocoa

var mem1 = ("정우성", 51, false)  // tuple 변수 선언
//            0      1    2

print("mem1 : \(mem1)")
print("mem1.0 : \( mem1.0 )")
print("mem1.1 : \( mem1.1 )")
print("mem1.2 : \( mem1.2 )")

mem1.0 = "정좌성"
mem1.1 = 46
mem1.2 = true
print("mem1 : \(mem1)")
//mem1.0 = 1234  자료형에 맞게 대입
//mem1.1 = "hi"
//mem1.2 = 123.456
//mem1.3 = 10   추가 불가

print("mem1 : \( type(of: mem1) )")  //tuple 자료형 : (String, Int, Bool)

var mem2:(String, Int, Bool)  //tuple 변수 선언 : 자료형설정

mem2 = mem1
print("mem2 : \(mem2)")

var mem3:(name:String, age:Int, marriage:Bool) = ("정남성",37,false)
print("mem3 : \(mem3)")
mem3.0 = "정북성"
mem3.age = 29
print("mem3.0 : \( mem3.0 ) , \( mem3.name )")
print("mem3.1 : \( mem3.1 ) , \( mem3.age )")
print("mem3.2 : \( mem3.2 ) , \( mem3.marriage )")



typealias Member = (name:String, age:Int, marriage:Bool)

var mem4:Member = ("북두신성",22,true)
print("mem4 : \(mem4)")

var nn:String
var aa:Int
var mar:Bool
nn = mem4.0
aa = mem4.age
mar = mem4.2
print(nn, aa, mar)

(nn, aa, mar) = mem3
print(nn, aa, mar)




/// tuple 을 이용하여 직사각형 변수를 구현하세요
/// 직사각형 속성 : 가로,세로, 넓이, 둘레
///.   넓이 : 가로 * 세로
///.  둘레 : (가로 + 세로) * 2
///
///
///
        //가로,세로,넓이,둘레
var rec = (5, 6,  0,  0)
rec.2 = rec.0 * rec.1
rec.3 = (rec.0 + rec.1) * 2

print(rec)

typealias Rectangle = (width:Int, height:Int, area:Int, border:Int)

var rec1:Rectangle = (5, 6,  0,  0)
rec1.area = rec1.width * rec1.height
rec1.border = (rec1.width + rec1.height) * 2

print(rec1)

