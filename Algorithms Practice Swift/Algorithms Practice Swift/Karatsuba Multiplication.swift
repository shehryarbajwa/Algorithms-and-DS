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
    
    //Create a string from num1. Create a string from num2.
    //We use this to use the function count
    let num1String = String(num1)
    let num2String = String(num2)
    
    
    //If num1String.count < 1, then we can just multiply num1 * num2
    guard num1String.count > 1 && num2String.count > 1 else {
        return num1 * num2
    }
    
    
    //We take to be the max of num1String or num2String
    let n = max(num1String.count, num2String.count)
    let nBy2 = n / 2
    
    //By using num1 divisible by 10^^nby2, we get the first digits of a
    //Using divisor, we get the last digits of b
    //Same goes for c and d
    let a = num1 / 10^^nBy2
    let b = num1 % 10^^nBy2
    let c = num2 / 10^^nBy2
    let d = num2 % 10^^nBy2
    
    //Then we calculate using Karatsuba. Which is a*c * 10^(2* nby2) + aplusbc * 10^nBy2 + bd
    //Use the formula and return the product
    
    let ac = karatsuba(a, by: c)
    let bd = karatsuba(b, by: d)
    let adPlusbc = karatsuba(a+b, by: c+d) - ac - bd
    
    let product = ac * 10^(2 * nBy2) + adPlusbc * 10^nBy2 + bd
    
    return product
}



