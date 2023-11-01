import Cocoa

var arr1 = [10,20,30]
var arr2 = [66,77,88]

func fn_1(aa:[Int], bb:inout[Int]){  //inout은 주소참조로 대입
    print("fn_1() : start -------")
    //aa[0] = 1234
    bb[0] = 1234
    print("aa : \(aa)")
    print("bb : \(bb)")
    print("fn_1() : end ---------")
    
} //func fn_1(aa:[Int], bb:inout[Int])

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

func studCalc( _ st: inout Stud){
    st.tot = 0
    for i in st.jum{
        st.tot += i
    }
    st.avg = st.tot / st.jum.count
}

studCalc(&exam[0])
print(exam[0])


func fn_01(){
    print("f1")
}

func fn_02(){
    print("f2")
}

var ff: ()->()
ff = fn_01
ff()



