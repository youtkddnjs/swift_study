import Cocoa

print("1. 정수 >>>>>>>>>>")

var ii = 12345678
// type(of: 알고싶은변수 ) --> 변수의 자료형을 리턴한다
print("ii" , ii, type(of: ii))
var i8:Int8 = 123
print("i8" , i8, type(of: i8))
ii = 128
//i8 = 128    -128~127
var i16:Int16 = 128
//i16 = 32768
ii = 32768
//ii = i8   자료형이 다른 경우 변수를 자동변환하여 대입 불가
print(ii,i8,i16)
ii = Int(i8)    //강제 형변환
print(ii,i8,i16)
ii = 127
i8 = Int8(ii)   //강제 형변환
print(ii,i8,i16)
ii = 128
//i8 = Int8(ii)   //강제 형변환
//print(ii,i8,i16)


print("2. 실수 >>>>>>>>>>")
var dd = 123.456 //대표 자료형 : Double
print("dd : ", dd, type(of: dd))
var ff:Float = 123.456
print("ff : ", ff, type(of: ff))
var ff32:Float32 = 123.456      // Float32  == Float
print("ff32 : ", ff32, type(of: ff32))
var ff64:Float64 = 123.456      // Float64  == Double
print("ff64 : ", ff64, type(of: ff64))

print("정수 <--> 실수")
ii = Int(dd)
print(ii, dd)
ii = 9876
dd = Double(ii)
print(ii, dd)

var tot = 250
var avg = Double(tot) / 3
print(tot, avg)
/*
83.33333333333333
8333.333333333333
8333
8333.0
83.33
 */
var avg2 = Double(Int(avg*100))/100
print(avg2)

var dd3 = avg * 100
var ii4 = Int(dd3)
var dd5 = Double(ii4)
var dd6 = dd5 / 100
print(dd3)
print(ii4)
print(dd5)
print(dd6)


print("3. Bool >>>>>>>>>>")
var bb = true
print("bb : ", bb)
bb = false
print("bb : ", bb)
ii = 1
// 숫자 <-> Bool 직접 변환 불가
//bb = Bool(ii)
//ii = Int(bb)


print("4. 문자, 문자열 >>>>>>>>>>")
var ss = "a"
print("ss : ", ss, type(of: ss))
var cc:Character = "b"
print("cc : ", cc, type(of: cc))
ss = "나는 무너 꿈을 꾸는 무너"
//cc = "나는 무너 꿈을 꾸는 무너"
ss = ""
//cc = ""
ss = "가"
cc = "나"
print(ss,cc)


//ii = "1234"
ii = Int("1234")!
print(ii)
//ii = Int("일이삼사")!
//print(ii)

dd = Double("9123.654")!
print(dd)

bb = Bool("true")!
print(bb)

//ss = 963
ss = "\(9863) , \(ii), \(dd), \(bb)"
print(ss)

/*
 
 1. 숫자

 Int
 Integer. 부호 있는 정수값 (127 ~ -128 까지 저장이 가능하다.)

 자료형    저장할 수 있는 값 범위    크기
 Int8    -128 ~ 127             ( 0 ~127  ~ -128 ~ -1 )    8bit
 Int16    32767 ~ -32768    16bit
 Int32    2147483647 ~ -2147483648    32bit
 Int64    9223372036854775807 ~ -9223372036854775808    64bit
 UInt
 Integer와 유사하지만 부호가 없는 정수. (0 ~ 255)

 음수의 범위를 양수가 가져간다고 보면 되겠다.

 Double, Float
 실수 범위이다. Float는 32bit, 64bit, Double은  64bit 표현 가능하다.







 2. Bool   참 / 거짓

 Bool
 true/false의 값을 가질 수 있는 자료형이다.







 3. 문자/문자열

 String
 아마 모든 언어에서 제일 많이 쓰는 자료형일 것이다.(C 제외)

 Character
 한 개 문자를 저장하는 자료형이다. 앞서 언급했듯이 큰따옴표(“ “)를 사용한다.
 
 
 */
