import Cocoa
var pre = ""
func fn(_ no:Int)->Int{
    var res = no
    let myPre = pre
    pre += "\t"
    print("\(myPre)fn \(no) 시작 \(res)")
    
    if no > 0 {  //조건
        res += fn(no-1)    // no-1 : 증감
    }
    
    print("\(myPre)fn \(no) 끝  \(res)")
    return res
}

var rr = fn(3) // 5 : 초기값
print("rr : \(rr)")


/*
 0 -> n 까지 3의 배수의 합을 출력하세요
 
 반복문 사용금지
 재귀함수 사용
 
 */
pre = ""

func three(_ no:Int)->Int{
    var res = 0
    
    if no % 3 == 0{
        res = no
    }
    let myPre = pre
    pre += "\t"
    print("\(myPre)fn \(no) 시작 \(res)")
    
    if no > 0 {  //조건
        res += three(no-1)    // no-1 : 증감
    }
    
    print("\(myPre)fn \(no) 끝  \(res)")
    return res
}
rr = three(17)
print(rr)
