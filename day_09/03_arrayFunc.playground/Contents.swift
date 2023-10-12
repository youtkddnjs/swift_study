import UIKit


print("1. 배열 선언 및 생성 >>>>>>>")
var arr1 = [30,20,50,20,50,40]
var arr2:Array<Int> = [30,20,50,20,50,40]
var arr3:[Int] = [30,20,50,20,50,40]
//var arr4 = []
var arr5:Array<Int> = []
var arr6:[Int] = []
var arr7 = Array<Int>()
//var arr8 = Array<Int>[]
//var arr9 = [Int][]
var arr10 = [Int]()


var arr20 = [10...15]  // 0번째가 10...15
var arr21 = Array(10...15)  //[10, 11, 12, 13, 14, 15]
                            // 0번째가 10
var arr22 = Array( stride(from: 20, through: 30, by: 3)) //[20, 23, 26, 29]
                                                         // 0번째가 20
var arr23 = Array(repeating: 7, count: 5)   //[7, 7, 7, 7, 7]
                                            // 0번째가 7

print("arr1: \(arr1), \(type(of:arr1))")
print("arr2: \(arr2), \(type(of:arr2))")
print("arr3: \(arr3), \(type(of:arr3))")
print("arr5: \(arr5), \(type(of:arr5))")
print("arr6: \(arr6), \(type(of:arr6))")
print("arr7: \(arr7), \(type(of:arr7))")
print("arr10: \(arr10), \(type(of:arr10))")
print("[10...15] : \(arr20), \(type(of:arr20))")
print("arr20[0] : \(arr20[0])")
print("Array(10...15) : \(arr21), \(type(of:arr21))")
print("arr21[0] : \(arr21[0])")
print("Array( stride(from: 20, through: 30, by: 3)) : \(arr22), \(type(of:arr22))")
print("arr22[0] : \(arr22[0])")
print("Array(repeating: 7, count: 5) : \(arr23), \(type(of:arr23))")
print("arr23[0] : \(arr23[0])")

print("2. 배열 대입 >>>>>>>")
var arr11 = arr1
print("arr1  : \(arr1)")
print("arr11 : \(arr11)")
arr1[1] = 2222
print("arr1  : \(arr1)")
print("arr11 : \(arr11)")


print("3. 배열 변경 >>>>>>>")
arr1 = [30,20,50,20,50,40]
print("arr1 : \(arr1)")
//arr1[6] = 66
arr1.append(66)
print("append : \(arr1)")
arr1.insert(77, at: 2)
print("insert : \(arr1)")
arr1.append(contentsOf: [123,456])
print("append(contentsOf) : \(arr1)")
arr1.insert(contentsOf: [98,76], at:5)
print("insert(contentsOf) : \(arr1)")
var a = arr1.remove(at: 3)
print("remove : \(arr1)")
print("a : \(a)")
a = arr1.removeFirst()
print("removeFirst : \(arr1)")
print("a : \(a)")
a = arr1.removeLast()
print("removeLast : \(arr1)")
print("a : \(a)")
var arr12 = arr1.dropFirst()
print("dropFirst : \(arr12), \(type(of: arr12))")
print("arr1 : \(arr1)")
arr12 = arr1.dropLast()
print("dropLast : \(arr12), \(type(of: arr12))")
print("arr1 : \(arr1)")

var arr13 = arr1.removeSubrange(2...5)  //리턴이 없음 : () 으로 리턴
print("removeSubrange : \(arr1)")
print("arr13 : \(arr13), \(type(of: arr13))")


print("3. 배열 검색 >>>>>>>")
arr1 = [30,20,50,20,50,40]
//arr1 = []
print("arr1 : \(arr1)")
print("arr1.first : \(arr1.first!)")
print("arr1.last : \(arr1.last!)")
print("arr1.max()! : \(arr1.max()!)")
print("arr1.min()! : \(arr1.min()!)")
print("arr1.index(of: 20) : \(arr1.index(of: 20))") //앞에서 먼저 나타나는 20이 몇번째?
print("arr1.index(of: 1234) : \(arr1.index(of: 1234))") //없으면 nil
print("arr1.firstIndex(of: 20) : \(arr1.firstIndex(of: 20))") //index와 같다
print("arr1.lastIndex(of: 20) : \(arr1.lastIndex(of: 20))") //뒤에서 먼저 나타나는 20이 몇번째?
print("arr1.contains(40) : \(arr1.contains(40) )")
print("arr1.contains(1234) : \(arr1.contains(1234) )")
print("arr1 : \(arr1)")


//  22,67,7,12,98,4,23,70,4,53,23,43,22,19,67,16,4,32

// 1. 짝수들의 배열을 구하세요
// 2. 원소가 2개 이상 존재하는 배열을 구하세요 [22, 67, 4]

var nums = [22,67,7,12,98,4,23,70,4,53,23,43,22,19,67,16,4,32]
var even:[Int] = []
var numMul:[Int] = []
for i in nums{
    if i % 2 == 0 && even.contains(i) == false {
        //print(even,i, even.contains(i))
        even.append(i)
        
    }
    
    print(i, nums.index(of: i)!, nums.lastIndex(of: i)!)
    if  nums.index(of: i) != nums.lastIndex(of: i)  && !numMul.contains(i) {
        numMul.append(i)
    }
}


print("짝수: \(even)")
print("중복: \(numMul)")

print("4. 배열 추출 >>>>>>>")
arr1 = [30,20,50,20,60,40]
print("arr1 : \(arr1)")
var arr41 = arr1[1...4]
print("arr1[1...4] : \(arr41) , \(type(of:arr41))") //[20, 50, 20, 60] , ArraySlice<Int>
arr41 = arr1.prefix(3)
print("prefix(3) : \(arr41)")   //[30, 20, 50]
arr41 = arr1.suffix(3)
print("suffix(3) : \(arr41)")   //[30, 20, 50]
arr41 = arr1[2...]
print("arr1[2...] : \(arr41) , \(type(of:arr41))") //[50, 20, 60, 40] , ArraySlice<Int>


print("5. 배열 치환 >>>>>>>")
arr1[2...4] = [999,888,777,666,555,444,333]
print("arr1[2...4] = [999,888,777,666,555,444,333] : \(arr1)")
arr1 = [30,20,50,20,60,40]
print("arr1 : \(arr1)")
arr1.replaceSubrange(3...4, with: [135,246,975,864])
print("replaceSubrange(3...4, with: [135,246,975,864]) : \(arr1)")



print("6. 배열 정렬 >>>>>>>")
var arr51 = Array(arr1.reversed())
print("reversed() : \(arr51)")

arr51 = Array(arr1.sorted())    //오름차순 정렬
print("sorted() : \(arr51)")
arr51 = Array(arr1.sorted(by: >))    //내림차순 정렬
print("sorted(by: >) : \(arr51)")
arr51 = Array(arr1.sorted(by: <))    //오름차순 정렬
print("sorted(by: <) : \(arr51)")
arr51 = Array(arr1.shuffled())      //랜덤으로 순서변경
print("shuffled() : \(arr51)")
print("arr1 : \(arr1)")
arr1.reverse()
print("reverse() : \(arr1)")
arr1.sort()
print("sort() : \(arr1)")
arr1.sort(by: >)
print("sort(by: >) : \(arr1)")
arr1.sort(by: <)
print("sort(by: <) : \(arr1)")
arr1.shuffle()
print("shuffle() : \(arr1)")

print("7. 배열 , 문자열 >>>>>>")
arr1 = [304,111,7,85,7,12,56,9,7,123,56,7654,7,83,7,20]
print("arr1 : \(arr1)")
var arrs = arr1.split(separator: 7) // 7을 기준으로 배열 나누기
print("arrs : \(arrs)")
for aa in arrs{
    print(aa)
}

var ttt = "원빈,현빈,투빈,김우빈,골빈,장희빈,커피빈,젤리빈,텅빈"
print("ttt : \(ttt)")
var ttss = ttt.split(separator: ",")    // 문자배열 <- 문자열
print("ttss : \(ttss)")

var arr71 = ["한가인","두가인","세가인","네가인","오가인"]
ttt = arr71.joined(separator: "-")      // 문자열 <- 문자배열
print("arr71 : \(arr71)")
print("ttt : \(ttt)")

print("arr71.isEmpty : \(arr71.isEmpty)")
arr71.removeAll()
print("removeAll() : \(arr71)")
print("arr71.isEmpty : \(arr71.isEmpty)")



/*

22,13,4,67,7,12,98,23,70,5,53,43,82,19,37,16,8,32



소수를 내림차순으로 출력하세요  소수: 자기자신을 1과 자신의 숫자로만 나누어지는 수



13,67,7,23,5,53,43,19,37  - 9개

 

67,53,73,37,23,19,13,7,5

*/
