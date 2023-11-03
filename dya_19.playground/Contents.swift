import Cocoa


//사각혀
class Rectangle{
    
    //가로,세로
    var width = 0
    var heigh = 0
    
    init( _ width:Int, _ heigh:Int){
        self.width = width
        self.heigh = heigh
    }
    
    func ppp(){
        print( " 둘레 : \(width + heigh * 2), 넓이 : \(width * heigh)")
        
        
    }
    
    
}
var rectangleArray = [
    Rectangle(77,78),
    Rectangle(57,58),
    Rectangle(97,98),
    Rectangle(67,68),
    Rectangle(87,88)
]
for value in rectangleArray{
    value.ppp()
}
