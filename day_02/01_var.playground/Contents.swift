import Cocoa

//5 + 3 = x

//x = 5 + 3


// var x    : 변수 선언
// =        : 대입연산자
// 5 + 3    : 대입할 연산 수식
var x = 5 + 3

print("x : ",x)

//5 + 3 = x

//변수 선언 및 초기화
// var a    : 변수선언
// = 7      : 대입 ( 변수 초기화 : 선언과 동시에 대입하는 것 )
var a = 7
print("a : ",a)

//var b   변수 선언 시 자료형을 지정하거나 초기화 하여 자료형을 명시해야 한다.
            // 그렇지 않을 경우 변수의 형태를 알 수 없어 에러 발생

//변수 선언 : 자료형 (Int) --> 정수를 처리할 수 있는 자료형
var c:Int

//print("c : ", c)  초기화 되지 않은 변수는 호출 불가

c = 6   // 변수 c 에 6 을 대입
print("c : ", c)    // 변수 c 호출 : 변수 c에 들어있는 값을 복사하여 요청한 곳에서 사용
print("c : ", c)
print("c : ", c)

//var c = 5 같은 이름의 변수 선언 불가

//변수 명명 규칙
//var 8 = 7 숫자로 시작 불가
var a623 = 10
//var 23wer = 20
//var + = 30 특수기호 불가 (예외 : _ )
var __ = 40
//var var = 50  예약어 사용 불가
//var aa bb = 60  띄어쓰기 불가
var 변수1 = 70    //한글 쓰기 금지

print(변수1)

var abcd = 80 //변수명은 가급적 소문자로 시작
var QWER = 90

print(abcd, QWER)

var zxcv = 89

var studentnumber = 23
var studnum = 34
var studNum = 15    // 카멜표기법
var stud_num = 27   // 언더스코어표기법
print(studentnumber)
print(studnum)
print(studNum)
print(stud_num)


let d = 11  //상수 선언시에는 반드시 초기화 해야 한다.

print("d:", d)

//d = 22 대입 불가 (상수의 값을 바꿀 수 없다)


var e = 30
var f = 40
var g = e + f

print(e,f,g)
g = 80
print(e,f,g)
print(e,f,g)
g = 20
print(e,f,g)
/*
 
 bit                                                        byte
                                        BCD     ASCII       EBCDIC
 =================================================================
 1          2       3       4      5    6       7           8
 2          4       8       16     32   64      128         256
 -----------------------------------------------------------
 0(off)     00      000     0~9         a~z 26  +특수기호   +부호(-/+)
 1(on)      01      001                 A~Z 26
            10      010                 0~9 10
            11      011                 -------
                    100                     62
                    101
                    110
                    111
 
 
 */

