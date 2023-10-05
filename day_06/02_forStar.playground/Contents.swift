import Cocoa

let cnt = 7

print("1 >>>>>>>>")
for line in 0..<cnt{
    for star in 0...line{
        print("*", terminator: "")
    }
    print()
}


print("2 >>>>>>>>")
for line in 0..<cnt{
    for star in line..<cnt{
        print("*", terminator: "")
    }
    print()
}


print("3 >>>>>>>>")
for line in 0..<cnt{
    for star in line+1..<cnt{
        print(" ", terminator: "")
    }
    
    for star in 0...line{
        print("*", terminator: "")
    }
    
    print()
}
print("> >>>>>>>>")

/*

&&&&*
&&&**
&&***
&****
*****


*/
