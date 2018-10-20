//
//  ViewController.swift
//  Algorithms Practice Swift
//
//  Created by Shehryar Bajwa on 2018-10-20.
//  Copyright © 2018 Shehryar Bajwa. All rights reserved.
//

import UIKit

precedencegroup PowerPrecedence { higherThan: MultiplicationPrecedence }
infix operator ^^ : PowerPrecedence
func ^^ (radix: Int, power: Int) -> Int {
    return Int(pow(Double(radix), Double(power)))
}

var str = "Hell"

func karatsuba(_ num1: Int, by num2: Int) -> Int {
    let num1String = String(num1)
    let num2String = String(num2)
    
    guard num1String.count > 1 && num2String.count > 1 else {
        return num1 * num2
    }
    
    let n = max(num1String.count, num2String.count)
    let nBy2 = n / 2
    
    let a = num1 / 10^^nBy2
    let b = num1 % 10^^nBy2
    let c = num2 / 10^^nBy2
    let d = num2 % 10^^nBy2
    
    let ac = karatsuba(a, by: c)
    let bd = karatsuba(b, by: d)
    let adPlusbc = karatsuba(a+b, by: c+d) - ac - bd
    
    let product = ac * 10^(2 * nBy2) + adPlusbc * 10^nBy2 + bd
    
    return product
}



