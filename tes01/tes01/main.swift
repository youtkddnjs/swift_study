//
//  main.swift
//  tes01
//
//  Created by sangwon on 2023/09/21.
//

import Foundation

var tot=0

for i in 1...100{
    var count = 0;
    
    for k in 1...100{
        // i를 1~100으로 나누었을 때 0이 되면
        if( i % k == 0){
            count += 1 ; // 카운트 +1
        }
    }//for k in 1...100
    
    // 1과 나자신으로 나눴을 때 소수 이므로 count 2 
    if(count == 2)
    {
        print( "i : \(i)")
        tot += i;
    }
}//for i in 1...100

print(tot)
