import Cocoa

var coffee:String = "아시아노";
var count = 3 ;
var price:Int;
var tot:Int;

print("커피를 입력 하세요 : ")
if let inputString = readLine() {
    print("입력 값 : \(inputString)")
    var input = inputString;
    
    switch input{
        
    case "아메리카노":
        price = 2000
    case "아시아노":
        price = 3000
    case "아프리카노":
        price = 4000
    default:
        price = 0
    }
    tot = count * price;
    print( " 가격 : \(tot)")
}else {
    print("입력 없음")
}

    
