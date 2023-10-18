import UIKit

typealias Coffee = (name:String, cnt:Int, tot:Int)

var orders:[Coffee] = [
    ("아메리카노", 3,0),
    ("아프리카노", 1,0),
    ("아시아노", 2,0),
    ("아메리카노", 3,0),
    ("아프리카노", 4,0)
]

let title = ["아메리카노", "아시아노", "아프리카노"]
let price = [2300, 2700,2800]

var res:[Coffee] = []

for tt in title{
    res.append((tt,0,0))
}


var ttt = 0
for i in 0..<orders.count{
    let cf = orders[i]
    //print(cf.name)
    //print(title.index(of: cf.name)!)
    //print(price[title.index(of: cf.name)!])
    //print(price[title.index(of: cf.name)!] * cf.cnt)
    let no = title.index(of: cf.name)!
    //print(no)
    orders[i].tot = price[no] * cf.cnt
    ttt += orders[i].tot
    print(orders[i], ttt)
    
    res[no].cnt += cf.cnt
    res[no].tot = res[no].cnt * price[no]
}

print("---------------------------")
for rr in res{
    print(rr)
}
print("---------------------------")
print(ttt)

/*
 
 원시 데이터



 이름    국어  영어  수학   총점   평균

 ----------------------------------

 현빈    77   71   73
 원빈    57   51   53
 장희빈   97   91   93
 골빈    67   61   63
 커피빈   87   81   83


 
 
 */

typealias Stud = (type:String, name:String, jum:[Int], tot:Int, avg:Int, grade:String)

var exam:[Stud] = [
    ("","현빈",    [77,   71,   73],0,0,""),
     ("","원빈",  [57,   51,   53, 57],0,0,""),
      ("","장희빈",  [97,   91],0,0,""),
       ("","골빈",  [67,   61,   63],0,0,""),
        ("","커피빈",  [87,   81, 81,  83],0,0,"")
]

let tTitle = ["산업체","일  반","예체능"]
let gTitle = ["가","가","가","가","가","가","양","미","우","수","수"]
for i in 0..<exam.count{
    for j in exam[i].jum{
        exam[i].tot += j
       // print(j)
    }
    exam[i].type = tTitle[exam[i].jum.count - 2]
    exam[i].avg = exam[i].tot / exam[i].jum.count
    exam[i].grade = gTitle[exam[i].avg/10]
    print(exam[i].avg, exam[i].avg/10, gTitle[exam[i].avg/10])
}


for st in exam{
    print(st)
}
