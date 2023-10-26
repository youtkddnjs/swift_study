import Cocoa

func fn_1(){
    print("fn_1() 실행 1")
    return;     //최초 return 에서 함수 탈출
    print("fn_1() 실행 2")
    return;
    print("fn_1() 실행 3")
}

func fn_2(no:Int){
    if no == 0 {
        print("0은 나눌수 없습니다. ")
        return;
    }
    print("fn_2() 실행 : \(100/no)")
}

func fn_3()->Int{
    print("fn_3() 실행")
    return 100
}
/*
func fn_4()->Int , Int{
    print("fn_4() 실행")
    return 100,200
}*/
func fn_5()->(Int,Int){
    print("fn_5() 실행")
    return (100,200)
}
func fn_6()->[Int]{
    print("fn_6() 실행")
    return [11,22,33]
}

fn_1()
fn_2(no:4)
fn_2(no:5)
fn_2(no:0)
var r3 = fn_3()
print("r3: \(r3)")
var r5 = fn_5()
print("r5: \(r5)")
print("---------------")
var r6 = fn_6()
r6[2] = 3456
print("r6: \(r6) , \(r6[1])")
print("---------------")
//fn_6()[2] = 9876
print("fn_6(): \(fn_6()) , \(fn_6()[1])")
print("---------------")


//num 의 배수에 해당하는 숫자들을 리턴하는 함수를 구현하세요
//단 num : 0 이면 "0은 처리불가" 메세지 호출 후 종료 하세요

func mulArr(num:Int , _ arr:Int...)->[Int]{
    
    var res:[Int] = []
    if num == 0 {
        print("0은 처리불가")
        return res
    }
    
    for i in arr{
        if i % num == 0 {
            res.append(i)
        }
    }
    
    return res
}

var rrr = mulArr(num:3, 45,56,67,78,76,12,34,26)
print(rrr)
rrr = mulArr(num:0, 45,56,67,78,76,12,34,26)
print(rrr)
