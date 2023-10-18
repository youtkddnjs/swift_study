import UIKit

var arr1 = ["호랑이","사자","표범","호랑이","사자"]
//var dic1 = ["호랑이":"고양이과","사자":"사자과","표범":"고양이과","호랑이":"범과","사자":"어흥"]
var dic1 = ["호랑이":"고양이과","사자":"사자과","표범":"고양이과","독수리":"맹금류","악어":"가방류"]
print(arr1)
print(dic1)
print(dic1.count)
print(type(of:  dic1) )
//print(dic1[0])
print(dic1["표범"])   //키에 해당하는 값 호출 : optional형태
var dic2:[String:Int] = [:]
var dic3:Dictionary<String,Int> = [:]
var dic4 = [String:Int]()
var dic5 = Dictionary<String,Int>()
print(dic1["곰"])    //키가 없으면 nil
print(dic1["맹금류"])  //값으로 검색 못함
dic1["사자"] = "야옹"   //값 변경
print(dic1)
dic1["상어"] = "어류"   //추가
print(dic1)

var rr = dic1.removeValue(forKey: "호랑이")    //삭제
print(dic1)
print(rr)
rr = dic1.removeValue(forKey: "두꺼비")    //존재하지 않는 key로 삭제시 에러 발생 안함
print(dic1)
print(rr)   //nil

dic1["표범"] = "야옹"
var kks = dic1.keys
print(kks)
var vvs = dic1.values
print(vvs)

for e in dic1{
    print(e, e.key , e.value)
}
print("------------")
for (k, v) in dic1{
    print(k, v)
}
print("------------")
print(dic1.isEmpty)
dic1.removeAll()
print(dic1.isEmpty)
