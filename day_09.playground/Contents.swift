import Cocoa

var arr = [67, 78, 54, 91, 88, 63, 87, 75, 82]

var bic = 100
var small = 0
var cnt = 0
var result = 0

for i in arr{
    if i >= 70 {
        cnt += 1
        result += i
    }
    
    if i > small {
        small = i
    }
    
    if i < bic {
        bic = i
    }
    
}


print("가장 큰 수 : \(small) 가장 작은 수 : \(bic) 합격자 수 : \(cnt) 합겨장 평균 : \(result/cnt)")
