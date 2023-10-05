
import Foundation

print("추억의 게임 참참참")

while true {
    print("x:종료, 1:왼쪽, 2:오른쪽 입력:", terminator: "")
    let ttt = readLine()!
    
    if ttt == "x"{
        break
    }
    
    if ttt != "1" && ttt != "2"{
        print("입력에러")
        continue
    }
    
    let com = "\( Int.random(in: 1...2) )"
    
    if ttt == com {
        print("승리")
    } else {
        print("패배")
    }
    
}
print("게임 종료 >>>>>>>>")
