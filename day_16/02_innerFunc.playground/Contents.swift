import Cocoa

var aa = 10
func outer(){
    var bb = 2000
    print("outer 시작 \(aa) \(bb)")
    inn1()
    inn2()
    print("outer 끝 \(aa) \(bb)")

    //print("outer 끝 \(aa) \(bb) \(c)")
    
    func inn1(){
        var c = 333
        aa += 1
        bb += 1
        print("inn1 실행 \(aa) \(bb) \(c)")
        //print("inn1 실행 \(aa) \(bb) \(c) \(d)")
    }
    func inn2(){
        var d = 4567
        aa += 10
        bb += 10
        print("inn2 실행 \(aa) \(bb) \(d)")
        //print("inn2 실행 \(aa) \(bb) \(c) \(d)")
    }
    
}


outer()
//inn1()
//outer.inn1()
//outer().inn1()

print("------------------------")
func exam(_ ttt:String...){
    typealias Stud = (name:String, jum:[Int], tot:Int, avg:Int)
    var studs:[Stud] = []
    func examInput(){
        //print(ttt)
        for t in ttt{
            //print(t.split(separator: ","))
            var arr = t.split(separator: ",")
            var jum:[Int] = []
            for i in arr[1...]{
                jum.append(Int(i)!)
               
            }
            //print(jum)
            studs.append((String(arr[0]), jum , 0,0))
        }
    }
    
    func examCalc(){
        for i in 0..<studs.count{
            for j in studs[i].jum{
                //print(j)
                studs[i].tot += j
            }
            studs[i].avg = studs[i].tot/studs[i].jum.count
        }
    }
    func examOutput(){
        for st in studs{
            var ttt = "\(st.name)\t"
            for j in st.jum{
                ttt += "\(j)\t"
            }
            for i in 0..<4-st.jum.count{
                ttt += "\t"
            }
            
            ttt += "\(st.tot)\t\(st.avg)"
            print(ttt)
        }
    }
    
    examInput()
    examCalc()
    examOutput()
}


exam("이효리,67,78,72","한가인,98,88","정우성,72,79,71,75")


/*

 짝수의 합계, 평균을 출력하는 함수를 구현하세요

 

 x 입력시 숫자 입력 종료

 

 입력부

 연산부

 출력부 나누어 실행

 

 even()   ---> 합계:?? , 평균:??



*/
