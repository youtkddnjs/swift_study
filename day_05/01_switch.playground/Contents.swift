import Cocoa


print("1. 기본 >>>>>>")
switch 30{
case 10:
    print("10 입니다. 1")
case 5:
    print("5 입니다. 1")
case 30:
    print("30 입니다. 1")
case 10:
    print("10 입니다. 2")
case 20:
    print("20 입니다. 1")
case 30:
    print("30 입니다. 2")
    default:
        print("기본값 이지롱")
}

print("switch 종료 1 -------------")



let grade = "과장"
let basic = 400

var bonus:Double

switch grade {
case "부장":
    bonus = 0.5
case "과장":
    bonus = 0.3
case "대리":
    bonus = 0.2
case "사원":
    bonus = 0.1
default:
    bonus = 0.0
}

let money = Int(Double(basic) * (1.0 + bonus))
print("기본급 : \(basic)")
print("직급 : \(grade)")
print("월급 : \(money)")

let menu = "아프리카노"
let cnt = 2

var price = 0

switch menu {
case "아메리카노":
    price = 2000
case "아시아노":
    price = 3000
case "아프리카노":
    price = 4000
default:
    price = 0
}

let tot = price * cnt
print("\(menu) (\(price)) - \(cnt) : \(tot)")


print("2. fallthrough, comma >>>>>>")

switch 55 {
case 10:
    print("10 입니다.")
case 30:
    print("30 입니다.")
    fallthrough
case 50,53,55,57:
    print("50 입니다.")
case 70:
    print("70 입니다.")
default:
    print("기본값 입니다.")
}



print("3. 범위 연산자 >>>>>>")
print(10...20)
print(10..<20)
//print(10<..20)
print(...20)
print(..<20)
print(10...)
//print(10<..)

switch 10 {
case 30...40:
    print("30...40 입니다.")
case 50..<60:
    print("50..<60 입니다.")
case 300...:
    print("300... 입니다.")
case ...0:
    print("...0 입니다.")
case ..<10:
    print("..<10 입니다.")
default:
    print("기본값입니다.")
}

print("4. where >>>>>>")
let no = 1
switch "돈까스" {
case "돈까스" where no > 5:
    print("양식 코스 요리입니다.")
case "초밥":
    print("일식입니다.")
case "돈까스" where no > 2:
    print("양식 셋트 입니다.")
case "자장면":
    print("중식입니다.")
case "돈까스":
    print("양식입니다.")
default :
    print("기본값입니다.")
}

print("-[------------------------")

switch "돈까스" {
case "돈까스" :
    if  no > 5 {
        print("양식 코스 요리입니다.")
    }else if no > 2{
        print("양식 셋트 입니다.")
    }else {
        print("양식입니다.")
    }
    
case "초밥":
    print("일식입니다.")

case "자장면":
    print("중식입니다.")

default :
    print("기본값입니다.")
}


