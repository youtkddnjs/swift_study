import UIKit

//   2,4,5,9,1,2,4,7,4,5,9,4,5,4   안타 친 야구 선수 목록이다. 각 선수의 안타갯수를 출력하세요
let hit = [2,4,5,9,1,2,4,7,4,5,9,4,5,4]

var res = Dictionary<Int,Int>()

for h in hit{
    
    var cnt = 1
    
    if res[h] != nil {
        cnt += res[h]!
    }
    
    res[h] = cnt
    //print(h)
}

for r in res.keys.sorted(){
    var star = ""
    for s in 0..<res[r]!{
        star += "★"
    }
    print("\(r) : \(star)")
}
