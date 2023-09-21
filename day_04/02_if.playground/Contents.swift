import Cocoa

var a = 34

if a >= 80 {
    print("if 문 실행 1")
    
    print("if 문 실행 2")
}

print("if 문 종료 1---------------")

if a >= 80 {                        //머리
    print("if~else문 참이지롱 실행 1")
}
else{                               //꼬리
    print("if~else문 거짓부렁 실행 1")
}

print("if~else문 종료 1---------------")
/*
else{                           // 단독 사용 및 if보다 선행으로 작업 불가
    print("if~else문 거짓부렁 실행 2")
}
if a >= 80 {
    print("if~else문 참이지롱 실행 2")
}*/


if a >= 80 {
    print("if~else문 우수 \(a)")
}


////////////////


if a >= 60 {
    print("if~else문 양호 \(a)")
}
else{
    print("if~else문 미흡 \(a)")
}

print("if~else문 종료 2---------------")
//점층구조로 처리할 것    80 > 60 > 40 >

if a >= 80 {
    print("if ~ else if ~ else문 우수 \(a)")
}
/*else if a >= 40 {
    print("if ~ else if ~ else문 정상 \(a)")
}*/
else if a >= 60 {
    print("if ~ else if ~ else문 양호 \(a)")
    if a % 2 == 0 {     // 중첩 if문 가능
        print("짝수")
    }else{
        print("홀수")
    }
}
else if a >= 40 {
    print("if ~ else if ~ else문 정상 \(a)")
}
else{
    print("if ~ else if ~ else문 미흡 \(a)")
}

print("if ~ else if ~ else문 종료 1---------------")
/*if a >= 80 {
    print("if ~ else if ~ else문 우수 \(a)")
}
else{
    print("if ~ else if ~ else문 미흡 \(a)")
}
else if a >= 60 {
    print("if ~ else if ~ else문 양호 \(a)")
}*/

