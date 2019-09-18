//
//  Calc.swift
//  Calculator
//
//  Created by Eddie Harris on 9/7/19.
//  Copyright © 2019 Eddie Harris. All rights reserved.
//

import Foundation

class Calc {
    
    func add(_ numb1: Float, _ numb2: Float) -> Float {
        return numb1 + numb2
    }
    
    func minus(_ numb1: Float, _ numb2: Float) -> Float {
        return numb1 - numb2
    }
    
    func multiply(_ numb1: Float, _ numb2: Float) -> Float {
        return numb1 * numb2
    }
    
    func divide(_ numb1: Float, _ numb2: Float) -> Float {
        return numb1 / numb2
    }
    
    func displayNumb(_ arr: [Int]) -> String {
        var displayStr = ""
        for i in 0...arr.count-1 {
            displayStr += String(arr[i])
        }
        return displayStr
    }
    
    func compute(_ numb1 : Float, _ numb2 : Float) -> [String : Float] {
        let arr : [String : Float] = [
            "plus": add(numb1,numb2),
            "minus": minus(numb1,numb2),
            "times": multiply(numb1,numb2),
            "divided": divide(numb1,numb2)
        ]
        return arr
    }
    
}
