import Cocoa

for bb in stride(from: 100, through: 500, by: 100) {
    print("bb :\(bb)")
    
    for ss in 0...4{
        
        if ss == 2 {
            break
        }
        
        print("\t \(bb), \(ss)")
    }
}

print("for 종료 1 >>>>>>>>")


big:for bb in stride(from: 100, through: 500, by: 100) {
    print("bb :\(bb)")
    
small:for ss in 0...4{
        
        if ss == 2 {
            break big
        }
        
        print("\t \(bb), \(ss)")
    }
}

print("for 종료 2 >>>>>>>>")


big:for bb in stride(from: 100, through: 500, by: 100) {
    print("bb :\(bb)")
    
small:for ss in 0...4{
        
        if bb == 300 && ss == 2 {
            break big
        }
        
        print("\t \(bb), \(ss)")
    }
}

print("for 종료 3 >>>>>>>>")


for bb in stride(from: 100, through: 500, by: 100) {
    print("bb :\(bb)")
    
    for ss in 0...4{
        
        if bb == 300 && ss == 2 {
            break
        }
        
        print("\t \(bb), \(ss)")
    }
    
    if bb == 300{
        break
    }
}

print("for 종료 4 >>>>>>>>")
