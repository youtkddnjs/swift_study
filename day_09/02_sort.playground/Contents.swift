import UIKit

var a = 10, b = 20

print(a,b)

//b = a
//a = b

var buf = b

b = a
a = buf


print(a,b)

var arr = [22,13,4,67,7]

print("정렬 전 : \(arr)")

/*
for i in arr {
    //i += 100
    print(i)
}


for i in 0..<arr.count{
    arr[i] += 100
    print(i, arr[i])
}*/



for me in 0..<arr.count{
    print("-------------\(me)")
    
    for you in me+1..<arr.count{
        
        if arr[me] > arr[you]{
            print("바꿔 :\(you), \(arr[you])")
            
            buf = arr[me]
            arr[me] = arr[you]
            arr[you] = buf
        }
        
        print(me, you, arr[me], arr[you], arr)
    }
    
    print("-------------\(me),\(arr)")
}



// 4 , 7, 13, 22, 67
print("정렬 후 : \(arr)")



//   67,78,54,91,88,63,87,75,82   3번째로 높은 점수를 출력하세요
// 정렬을 이용하여 출력하세요

arr = [67,78,54,91,88,63,87,75,82]

for me in 0..<arr.count{
    for you in me+1..<arr.count{
        if arr[me] < arr[you]{
            buf = arr[me]
            arr[me] = arr[you]
            arr[you] = buf
        }
    }
}

print(arr[2])


