import Cocoa


var a = 2;
var b = 1;

for x in 1...3{
    
    for y in 1...9{
        
        for z in 1...3{
            
            print("\(b) * \(a) = \(b*a)", terminator: "\t")
            if(z % 3 == 0){
                print()
                a += 1;
            } //if(z % 3 == 0){
        } //for z in 1...3{
      
    } //for y in 1...9{
    b += 3
    print("")
    a = 2;
    
} //for x inf 1...9{
    
