import Cocoa

for i in 0...9{
    //i = 123  i는 상수 :: 대입불가
    print(i)
}
print("-----------------")
for i in 20..<30{
    
    print(i)
}
print("-----------------")
for i in (40..<50).reversed(){
    
    print(i)
}
print("-----------------")
/*
for i in 30...20{
    
    print(i)
}
 */
print("-----------------")

for i in stride(from: 50, through: 40, by: -2) {
    print(i)
}
print("-----------------")

for i in stride(from: 50, to: 40, by: -2) {
    print(i)
}


print("-----------------")
var tot = 0
for i in stride(from: 1, through: 100, by: 1) {
    
    var a = 1000
    a += i
    tot += i
    print(i, a, tot)
}

print("1->100 합계 : \(tot)")

// 1-> 100 에서 짝수들의 합을 구하세요
//.                  평균도 구하세요
//. 솟수들의 합과 평균을 구하세요
print("방법 1 >>>>>")
tot = 0
for i in 1...100 {
    if i % 2 == 0{
        tot += i
        print(i, tot)
    }
}
print(tot)

print("방법 2 >>>>>")
tot = 0
for i in stride(from: 2, through: 100, by: 2) {
    
    tot += i
    print(i, tot)
    
}
print(tot)
print("방법 3 >>>>>")
tot = 0
var first = 3
first += first % 2
for i in stride(from: first, through: 100, by: 2) {
    
    tot += i
    print(i, tot)
    
}
print(tot)
