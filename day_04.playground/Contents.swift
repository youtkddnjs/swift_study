import Cocoa

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

var grade_01 = "수";
var grade_02 = "우";
var grade_03 = "미";
var grade_04 = "양";
var grade_05 = "가";


var result_grade =  avg >= 90 ? grade_01 :
                    avg >= 80 ? grade_02 :
                    avg >= 70 ? grade_03 :
                    avg >= 60 ? grade_04 : grade_05;

print( "\(result_grade)" );



