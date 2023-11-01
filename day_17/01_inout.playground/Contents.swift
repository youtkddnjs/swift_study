import Cocoa

var arr1 = [10,20,30]
var arr2 = [66,77,88]

func fn_1(aa:[Int], bb:inout[Int]){ // inout -> 매개변수를 주소참조로 대입
                                    // 주소를 복사하기 때문에 대입 가능
    print("fn_1() 시작 -------")
    //aa[0] = 1234
    bb[0] = 1234        //주소 참조 : 대입 가능
    print("aa : \(aa)")
    print("bb : \(bb)")
    print("fn_1() 끝 -------")
}


fn_1(aa:arr1, bb:&arr2)
print("arr1 : \(arr1)")
print("arr2 : \(arr2)")


typealias Stud = (name:String, jum:[Int], tot:Int, avg:Int)

var exam:[Stud] = [
    ("현빈",[68,67,69],0,0),
    ("원빈",[98,97,99],0,0),
    ("투빈",[78,77,79],0,0),
    ("텅빈",[88,87,89],0,0)
]

func studCalc(_ st:inout Stud){
    st.tot = 0
    for i in st.jum{
        st.tot += i
    }
    st.avg = st.tot / st.jum.count
}

//studCalc(&exam[0])
//print(exam[0])

for i in 0..<exam.count{
    studCalc(&exam[i])
}

for tt in exam{
    print(tt)
}

/*

 직사각형 튜플을 정의하고 직사각형 배열과 주소 참조 함수를 구현하여
 직사각형의 넓이 둘레를 출력하세요
 

 출력내용 : 가로, 세로, 넓이, 둘레

 */

typealias Rectangle = (ww:Int, hh:Int, area:Int, border:Int)
var recs:[Rectangle] = [
    (5,6,0,0),
    (20,10,0,0),
    (8,7,0,0),
    (15,12,0,0)
]

func recCalc(_ rr:inout Rectangle){
    rr.area = rr.ww * rr.hh
    rr.border = (rr.ww + rr.hh) * 2
}

for i in 0..<recs.count{
    recCalc(&recs[i])
}

for r in recs{
    print(r)
}

