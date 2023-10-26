import Cocoa
typealias Stud = (name:String, jum:[Int], tot:Int, avg:Int)
var res:[Stud] = []

func exam(){
    examInput()
    examCalc()
    examPrint()
}

func examInput(){
    res.append(("원빈",[77,88,62],0,0))
    res.append(("투빈",[87,88,82],0,0))
    res.append(("현빈",[57,58,52],0,0))
    res.append(("커피빈",[67,68,62],0,0))
    res.append(("김우빈",[97,78,52,43],0,0))
}
func examCalc(){
    for i in 0..<res.count {
        res[i].tot = 0
        for j in res[i].jum{
            res[i].tot += j
        }
        res[i].avg = res[i].tot / res[i].jum.count
    }
}

func examPrint(){
    for st in res{
        var ttt = "\(st.name)\t"
        if st.name.count < 3 {
            ttt += "\t"
        }
        ttt += "\(st.jum)\t"
        if st.jum.count < 4 {
            ttt += "\t"
        }
        ttt += "\(st.tot)\t\(st.avg)"
        print(ttt)
    }
}

exam()
//print(res)

/*

 도형을 함수로 표현하세요

 계산하는 함수를 매개변수의 갯수에 따라 구분하여 처리하는 함수로 구현하세요

 shape(5)

 shape(5,6)

 shape(5,6,8)

 

 도형종류, 넓이, 둘레

 

 */
typealias ShData = (name:String, area:Int, border:Int)
func shape(_ line:Int...){
    var rr:ShData?
    if line.count == 1{
        rr = circle(r: line[0])
    }
    if line.count == 2{
        rr = rectangle(w:line[0], h:line[1])
    }
    if line.count == 3{
        rr = triAngle(w:line[0], h:line[1], a:line[2])
    }
    
    print(rr!)
}

func circle(r:Int)->ShData{
    let PI = 3.14
    let area = Int(Double(r * r) * PI)
    let border = Int(Double(r * 2) * PI)
    return ("원",area, border)
}
func rectangle(w:Int, h:Int)->ShData{
    let area = w * h
    let border = (w + h) * 2
    return ("직사각형",area, border)
}
func triAngle(w:Int, h:Int, a:Int)->ShData{
    let area = w * h / 2
    let border = w + h + a
    return ("직각삼각형",area, border)
}
shape(5)
shape(5,6)
shape(5,6,8)

