import Cocoa

func fn_1(aa:Int, bb:String)->Double{
    print("fn_1() 실행 \(aa), \(bb)")
    return 123.456
}

var ff = fn_1

var rr = ff(10,"아기상어")
print(rr)

//ff = (aa:Int, bb:String)->Double{
//    print("fn_2() 실행 \(aa), \(bb)")
//    return 123.456
//}
ff = {
    (aa:Int, bb:String)->Double in
    print("클로저_1() 실행 \(aa), \(bb)")
    return 987.654
}
rr = ff(20,"엄마상어")
print(rr)
