import Cocoa

func fn_1(){
    var a = 1000
    print("fn_1() 시작 \(a)")
    fn_2()
    print("fn_1()  끝 \(a)")
    //print("fn_1()  끝 \(a), \(b)")
}

func fn_2(){
    var b = 100
    print("\t fn_2() 시작 \(b)")
    //print("\t fn_2() 시작 \(a), \(b)")
    fn_3()
    print("\t fn_2()  끝 \(b)")
}

func fn_3(){
    var c = 10
    print("\t\t fn_3() 시작 \(c)")
    fn_1()
    print("\t\t fn_3()  끝 \(c)")
}


fn_1()
