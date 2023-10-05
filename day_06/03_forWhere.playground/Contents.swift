import Cocoa

for i in 0..<20{
    if i % 3 == 0 {
        print(i)
    }
}
print("----------------------")

for i in 0..<20 where i % 3 == 0{
    print(i)
}
print("----------------------")
