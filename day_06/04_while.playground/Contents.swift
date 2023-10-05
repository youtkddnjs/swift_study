import Cocoa


var i = 0 //초기값

while i < 10 {  //조건
    print("while 실행 \(i)")
    i += 1 //증감
}

print("----------------------")

/// 0--> 100   :  3의 배수의 합
///

i = 0
var tot = 0
while i <= 100 {
    if i % 3 == 0 {
        tot += i
        print(i, tot)
    }
    i += 1
}
print(tot)

print("-----------------")



for i in 0...10{
    print("for 시작 \(i)")
    
    if i == 5 {
        break
    }
    
    print("for 끝 \(i)")
}
print("for 종료 -----------------")

i = 0

while true {
    print("while 시작 \(i)")
    if i == 5 {
        break
    }
    print("while 끝 \(i)")
    i += 1
}
print("while 종료 -----------------")



for i in 0...10{
    print("for continue 시작 \(i)")
    
    if i == 5 {
        continue
    }
    
    print("for continue 끝 \(i)")
}
print("for continue 종료 -----------------")


for i in 0...10{
    print("for if 시작 \(i)")
    
    if i != 5 {
        print("for if 끝 \(i)")
    }
    
    
}
print("for if 종료 -----------------")


i = 0

while i <= 10 {
    i += 1
    print("while continue 시작 \(i)")
    if i == 5 {
        continue
    }
    print("while continue  끝 \(i)")
    
}
print("while continue  종료 -----------------")
