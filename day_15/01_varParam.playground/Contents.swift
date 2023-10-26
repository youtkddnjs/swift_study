import Cocoa

func multiple(num:Int, _ arr:Int... ){
    /////숫자들을 입력하여 기본수의 배수의 총점, 평균을 출력하는 함수를 구현하세요
    ///
    var mm:[Int] = []
    for i in arr{
        if i%num == 0 {
            mm.append(i)
            //print(i, mm)
        }
    }
    var tot = 0
    for i in mm{
        tot += i
    }
    print(mm, tot, tot/mm.count)
    
}

multiple(num:2, 5,7,23,4,67,9,12,13,14)
