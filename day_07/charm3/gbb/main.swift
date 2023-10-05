import Foundation

print("가위 바위 보 게임 시작")

while true {
    
    print("1.가위 2.바위 3.보 x.종료:" , terminator: "")
    let me = readLine()!
    if me == "x"{
        break
    }
    let com = "\( Int.random(in: 1...3) )"
    
    if me == "1"{ //내가 가위일때
        switch com {
        case "2":
            print("패 - 가위 : 바위")
        case "3":
            print("승 - 가위 : 보")
        default:
            print("비김 - 가위 : 가위")
        }
    }
    
    if me == "2"{ //내가 바위일때
        switch com {
        case "3":
            print("패 - 바위 : 보")
        case "1":
            print("승 - 바위 : 가위")
        default:
            print("비김 - 바위 : 바위")
        }
    }
    
    
    
    if me == "3"{ //내가 보일때
        switch com {
        case "1":
            print("패 - 보 : 가위")
        case "2":
            print("승 - 보 : 바위")
        default:
            print("비김 - 보 : 보")
        }
    }
    
    
}

print("가위 바위 보 종료 >>>>>>>")
