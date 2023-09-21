import Cocoa

print("2.4 할당연산자 >>>>>>>")
var aa = 5
print("aa : \(aa)")

//aa = aa + 4
aa += 4
print("aa += 4 : \(aa)")
aa -= 2
print("aa -= 2 : \(aa)")
aa *= 3
print("aa *= 3 : \(aa)")
aa /= 2
print("aa /= 2 : \(aa)")
aa %= 3
print("aa %= 3 : \(aa)")
//aa++
//aa--


print("3. 조건 연산자 >>>>>>>")
var bb = false
var rr1 = bb ? "참이지롱" : "거짓부렁"

print("\(bb) : \(rr1)")


let jum = 78
rr1 = jum >= 80 ? "합격" : "불합격"
print("\(jum) : \(rr1)")


//  80 > 60 > 40 >
rr1 =   jum >= 80 ? "우수" :
     //   jum >= 40 ? "정상" :
        jum >= 60 ? "양호" :
        jum >= 40 ? "정상" :
        "미흡"

print("\(jum) : \(rr1)")


//평균을 이용하여 수우미양가를 출력하세요
//수 >=90 , 우 >= 80 , 미 >= 70, 양 >=60 , 가

