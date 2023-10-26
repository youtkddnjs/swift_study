//
//  main.swift
//  InnerEven
//
//  Created by lee on 2023/10/26.
//

import Foundation

/*

 짝수의 합계, 평균을 출력하는 함수를 구현하세요

 

 x 입력시 숫자 입력 종료

 

 입력부

 연산부

 출력부 나누어 실행

 

 even()   ---> 합계:?? , 평균:??



*/
func even(){
    
    var arr:[Int] = []
    var tot = 0, avg = 0
    func evenInit(){
        while true{
            print("숫자입력 종료 : x. 입력:", terminator: "")
            var ttt = readLine()
            
            if ttt == "x" {
                return;
            }
            
            arr.append(Int(ttt!)!)
        }
    }
    
    func evenCalc(){
        tot = 0
        var cnt = 0
        for i in arr{
            if i % 2 == 0 {
                tot += i
                cnt += 1
            }
        }
        
        avg = tot / cnt
        
    }
    
    func evenPPP(){
        print("합계 : \(tot) , 평균 : \(avg)")
    }
    
    evenInit()
    evenCalc()
    evenPPP()
}

even()

