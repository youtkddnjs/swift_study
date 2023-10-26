import Cocoa

//label : name, age
//parameter : name, age
func fn_1(name:String, age:Int){
    print("fn_1() 실행 : \(name) , \(age)")
}

//label : name, aa      --> 함수 호출 시
//parameter : name, age --> 함수 내부
func fn_2(name:String, aa age:Int){
    print("fn_2() 실행 : \(name) , \(age)")
    //print("fn_2() 실행 : \(nn) , \(aa)")
}

//label : _(생략), age   --> 함수 호출 시
//parameter : name, age --> 함수 내부
func fn_3(_ name:String, age:Int){
    print("fn_3() 실행 : \(name) , \(age)")
}

fn_1(name:"정우성", age:48)
//fn_2(name:"정좌성", age:35)
fn_2(name:"정중성", aa:29)
//fn_3(name:"정남성", age:21)
fn_3(_ :"정북성", age:17)
fn_3("감수성", age:15)

func fn_4(name:String, age:Int=45, marriage:Bool=false){
    print("fn_4() 실행 : \(name) , \(age), \(marriage)")
}
fn_4(name:"이효리", age:37, marriage: true)
fn_4(name:"삼효리", age:47)
fn_4(name:"사효리", marriage: true)
fn_4(name:"오효리")
//fn_4()


func coffee(_ menu:String, _ cnt:Int = 1, _ takeout:Bool = false){
    
    
    let price = [
        "아메리카노":1400, "아프리카노":1500, "아시아노":1650
    ]
    
    var tot = price[menu]! * cnt
    
    if takeout {
        tot += 100
    }
    
    print("\(menu), \(cnt) , \(takeout) => \(tot)")
    
}
coffee("아메리카노", 2, false)
coffee("아메리카노", 3, true)
coffee("아프리카노", 4)
coffee("아시아노")
//coffee("아프리카노", true)

/*
 

 //찌개집을 구현하세요

 찌개이름, 인분, 공기밥추가

 인분 생략시 : 1인분

 공기밥 추가 생략시 : 0



 restaurant("김치찌개",2, 1)  --> 김치찌개 2인분 공기밥 1 추가

 restaurant("김치찌개",2)  --> 김치찌개 2인분 공기밥 0 추가

 restaurant("김치찌개")  --> 김치찌개 1인분


 
 */
func restaurant(_ menu:String, _ cnt:Int = 1, _ bab:Int = 0){
    let price = [
        "김치찌개":7000, "된장찌개":6000, "부대찌개":11000
    ]
    
    var tot = price[menu]! * cnt + bab * 1500
    print("\(menu) , \(cnt), \(bab) : \(tot)")
}
restaurant("김치찌개",2, 1)
restaurant("된장찌개",2, 1)
restaurant("부대찌개",4)
restaurant("부대찌개")
restaurant("김치찌개",3)
restaurant("된장찌개")

func fn_5(name:String, jum:[Int], gender:Bool){
    print("fn_5() 실행 : \(name), \(jum) , \(gender)")
}
func fn_6(name:String, jum:Int..., gender:Bool){
    print("fn_6() 실행 : \(name), \(jum) , \(gender)")
}
/*
func fn_7(_ name:String,_ jum:Int..., _ gender:Bool){
    print("fn_7() 실행 : \(name), \(jum) , \(gender)")
}

func fn_8(_ name:String, _ jum:Int..., _ gender:Bool = false){
    print("fn_8() 실행 : \(name), \(jum) , \(gender)")
}
 */

func fn_9(_ name:String, _ gender:Bool = false, _ jum:Int...){
    print("fn_9() 실행 : \(name), \(jum) , \(gender)")
}
fn_5(name: "한가인", jum: [56,65,54], gender: false)
//fn_5(name: "두가인", jum: 56,65,54, gender: false)
//fn_6(name: "세가인", jum: [56,65,54], gender: false)
fn_6(name: "사가인", jum: 56,65,54, gender: false)
fn_9("오가인",true, 56,65,54 )
fn_9("육가인",true)
fn_9("칠가인")
//fn_9("팔가인", 56,65,54 )

func shape(_ line:Int...){
    let name = ["원","직사각형","직각삼각형"]
    var area = 0, border = 0
    let PI = 3.14
    if line.count == 1{
        area = Int(Double(line[0] * line[0]) * PI)
        border = Int(Double(line[0] * 2) * PI)
    }
    if line.count == 2{
        area = line[0] * line[1]
        border = (line[0] + line[1]) * 2
    }
    if line.count == 3{
        area = line[0] * line[1] / 2
        border = line[0] + line[1] + line[2]
    }
    print("\(name[line.count-1])  넓이 : \(area) , 둘레 : \(border)")
}

shape(5)
shape(5,6)
shape(5,6,8)



///숫자들을 입력하여 기본수의 배수의 총점, 평균을 출력하는 함수를 구현하세요

multiple(num:3, 5,7,23,4,67,9,12,13,14)
