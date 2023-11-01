import Cocoa

func fn_aa(a:Int, b:String, c:()->()){
    print("fn_aa 시작: \(a), \(b)")
    c()
    print("fn_aa 끝 --------------")
}

func fn_bb(a:Int, c:()->(), b:String){ // 후행 클로저 조건 : 클로저가 매개변수 맨 뒤에 있어야 한다.
    print("fn_bb 시작: \(a), \(b)")
    c()
    print("fn_bb 끝 --------------")
}

func fn_cc(a:Int, b:String, c:()->(), d:()->()){
    print("fn_cc 시작: \(a), \(b)")
    c()
    d()
    print("fn_cc 끝 --------------")
}

fn_aa(a:10,b:"아기상어",c:{ print("클로저 1")})
//fn_aa(a:20,b:"엄마상어",{ print("후행 클로저 2")})
fn_aa(a:30,b:"아빠상어"){ print("후행 클로저 3") }
fn_bb(a:666,c:{ print("클로저 4")},b:"나는무너")
//fn_bb(a:777,b:"나는고래"){ print("클로저 5")}
fn_cc(a:1234,b:"장수풍뎅이",c:{ print("클로저 6")}, d:{ print("클로저 7")})
fn_cc(a:5678,b:"사슴벌레",c:{ print("클로저 8")} ){ print("후행 클로저 9")}
//fn_cc(a:9012,b:"하늘소"){ print("후행 클로저 10")}{ print("후행 클로저 11")} 후행 클로저는 맨 끝 함수 1개만 가능


func fn_dd(a:Int, b:String, c:()->Int) ->Int {
    print("fn_dd 시작: \(a), \(b)")
    return c()
}

var rr = fn_dd(a:13, b:"폴리"){ print("클로저 12"); return 98765 }
print(rr)
rr = fn_dd(a:26, b:"로이"){ print("클로저 13"); return 12345 }
print(rr)

func arrCalc(_ arr:Int..., qwer:([Int])->()   ){
    print("arrCalc 실행")
    qwer(arr)
}
arrCalc(23,56,8,9,12,7,66){
    var tot = 0
    for i in $0{
        tot += i
    }
    print(tot)
}

arrCalc(23,56,8,9,12,7,66){
    var tot = 0
    for i in $0{
        tot += i
    }
    print(tot/$0.count)
}


/*
 숫자 5개, 클로저1개 를 입력받아 처리하는 함수를 구현하세요
 
 함수실행시
 1.  클로저로 5개의 숫자중 큰숫자를 출력
 2.  클로저로 5개 숫자중에 앞의 3개의 평균을 출력
 3.  클로저로 맨앞, 맨뒤 숫자 합계를 출력
 
 */

func numberFive(_ a:Int, _ b:Int, _ c:Int, _ d:Int, _ e:Int , fn:([Int])->()){
    fn([a,b,c,d,e])
}

numberFive(23,56,12,37,14){
    var big = $0[0]
    for i in $0{
        if big < i{
            big = i
        }
    }
    print(big)
}

numberFive(23,56,12,37,14){
    var tot = 0
    for i in $0[0..<3]{
        tot += i
    }
    print(tot/3)
}
numberFive(23,56,12,37,14){
    
    print($0.first! + $0.last!)
}
