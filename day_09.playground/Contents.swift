import Cocoa

// 1부터 10까지의 숫자 중에서 짝수를 찾아 배열로 만듭니다.
var array = [22, 67, 7, 12, 98, 4, 23, 70, 4, 53, 23, 43, 22, 19, 67, 16, 4, 32]
var array2 = [Int]()
var array3 = [Int]()
var array4 = [Int]()
var array5 = [Int]()

var j = 0

for i in array {
    if i % 2 == 0 && !array2.contains(i){
        array2.append(i)
    }
    
    if ( !(array.index(of:i)! == j) && !array5.contains(i)){
        array5.append(i)
    }
    j += 1
    
    print(array.filter({ $0 == i }))
    
    
}//for i in array {

for i in 0..<array.count {
    for j in (i + 1)..<array.count {
        if array[i] == array[j] {
            if !array3.contains(array[i]) {
                array3.append(array[i])
            }
        }
    }
}//for i in 0..<array.count {

for element in array {
    if !array4.contains(element) {
        array4.append(element)
    }
} //for element in array {



//print(array2)
//print(array3)
//print(array4)
//print(array5)
 
