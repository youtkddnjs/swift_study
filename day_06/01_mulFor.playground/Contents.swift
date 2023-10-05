import Cocoa

for h in 1...12{
    print("[[[ \(h) 시 ]]]")
    
    for m in 0..<60{
        print("\(h) : \(m)")
    }
    
    //print("\(h) : \(m)")
}

print("for 종료 ----------------")

print("구구단 1 ")

for dan in 2..<10{
    print("[[[ \(dan) 단 ]]]")
    
    for gob in 1..<10{
        print("\(dan) x \(gob) = \(dan * gob)")
    }
    
}


print("구구단 2 ")
for gob in 1..<10{
    for dan in 2..<10{
  
        print("\(dan)x\(gob)=\(dan * gob)", terminator: "\t")
    }
    print()
}
