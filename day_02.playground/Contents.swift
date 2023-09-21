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
print("first : ",ii,i8,i16, "//ii type : ", type(of:ii), "//i8 type : ", type(of:i8),"//i16 type : ", type(of:i16))
ii = Int(i8)    //강제 형변환
print("second : ",ii,i8,i16, "//ii type : ", type(of:ii), "//i8 type : ", type(of:i8),"//i16 type : ", type(of:i16))
ii = 127
print("third : ",ii,i8,i16, "//ii type : ", type(of:ii), "//i8 type : ", type(of:i8),"//i16 type : ", type(of:i16))   //강제 형변환
print(ii,i8,i16)
ii = 128
//i8 = Int8(ii)   //강제 형변환 큰 자료형을 작은 자료형을 변경 시 컴파일 할 때, 에러 발생
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
var avg = tot / 3
print(tot, avg, type(of:avg))
