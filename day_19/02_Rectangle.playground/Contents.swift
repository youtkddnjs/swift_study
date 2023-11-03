import Cocoa

/*
직사각형 클래스를 구현하세요
 클래스명 : Rectangle
 생성시 가로, 세로 입력
 
 출력 메소드 실행시 가로,세로, 넓이,둘레
 
 직사각형 5개
 */

class Rectangle{
    var w:Int,h:Int, area = 0, border = 0
    
    init(_ w:Int, _ h:Int){
        self.w = w
        self.h = h
        calc()
    }
    
    func calc(){
        area = w * h
        border = (w + h) * 2
    }
    
    func ppp(){
        print("\(w),\(h) : \(area),\(border)")
    }
}

var rrs = [
    Rectangle(5,6),
    Rectangle(20,10),
    Rectangle(8,8)
]

for r in rrs{
    r.ppp()
}
 
