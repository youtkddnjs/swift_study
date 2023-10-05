import Cocoa

var a = 10

var arr1 = [10,30,20,10,40] //배열 변수 선언 및 초기화
//           0  1  2  3  4
//var arr1:[Int] = [10,30,20,10,40]
//var arr1:Array<Int> = [10,30,20,10,40]

var tup1 = (10,30,20,10,40)

print("a:\(a)")
print("arr1:\(arr1)  , \( type(of:arr1) )")
print("tup1:\( tup1 ) , \( type(of:tup1) )")
print("arr1[0]:\( arr1[0] )")
print("tup1.0:\( tup1.0 )")

var no = 2
print("arr1[no]:\( arr1[no] )")
//print("tup1.no:\( tup1.no )")
no = 3
print("arr1[no]:\( arr1[no] )")
print("arr1[4]:\( arr1[4] )")
//print("arr1[5]:\( arr1[5] )")  인덱스 번호가 배열의 범위를 벗어나면 에러
print("arr1[no]:\( arr1[no] )")
print("arr1.count:\( arr1.count )") //배열 원소 갯수
arr1[2] = 2345
arr1[no] = 3456
//arr1[5] = 9876 인덱스 번호가 배열의 범위를 벗어나면 에러
print("arr1:\(arr1)  ")

for i in 0..<5{
    print(i, arr1[i])
}

print("-------------------")
for i in 0..<arr1.count{
    print(i, arr1[i])
}
print("-------------------")
for i in arr1{
    print(i)
}

print("-------------------")


var jum = [78,89,62]
var tot = 0

for j in jum {
    tot += j
    print(j, tot)
}
print(tot, tot/jum.count)

print("-------------------")

typealias Stud = (name:String, jum:[Int], tot:Int, avg:Int)
var st:Stud = ("장동건", [54,73,86], 0 , 0)

for j in st.jum {
    st.tot += j
    print(j, st.tot)
}
st.avg = st.tot/st.jum.count

print(st)

//  22,13,4,67,7,12,98,23,70,5,53,43,82,19,37,16,8,32

// 배열로 구성하고 짝수들의 합을 구하세요
