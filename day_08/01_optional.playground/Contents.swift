import Cocoa

var a = 10
var b:Int
var c:Int?      //optional 변수 : nil을 허용

print(a)
//print(b)
print(c)    //nil

a = 100
b = 200
c = 300
print("--------------")
print(a)
print(b)
print(c)

//a = nil
//b = nil
c = nil
print("--------------")
print(a)
print(b)
print(c)


if c == nil {
    print("없어요")
}else {
    print("있어요")
}


//print(c!)  // c! =>  c 의 값이 반드시 있다고 명시

c = 333

print(c , c!)  // c! =>  c 의 값이 반드시 있다고 명시

//a += c 옵셔널 변수를 산술연산에 직접 사용 불가
a += c!
print(a)


var cc = c ?? 1234
print("cc : \(cc)")

c = nil

cc = c ?? 1234
print("cc : \(cc)")
