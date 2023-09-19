import Cocoa

// 03_exam 파일을 생성하고
////이름, 국어,영어,수학 변수를 만들고 값을 입력한 후
//총점, 평균을 계산하여 출력하세요

let pName = "장동건"
let kor = 78 , eng = 82, mat = 91
var tot = kor + eng + mat
var avg = tot / 3


print("이름",pName)
print("국어",kor)
print("영어",eng)
print("수학",mat)
print("총점",tot)
print("평균",avg)
