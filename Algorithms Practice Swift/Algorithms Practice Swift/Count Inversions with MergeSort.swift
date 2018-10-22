//
//  Count Inversions with MergeSort.swift
//  Algorithms Practice Swift
//
//  Created by Shehryar Bajwa on 2018-10-22.
//  Copyright © 2018 Shehryar Bajwa. All rights reserved.
//

import Foundation


func mergeAlt(leftPile: [Int], rightPile: [Int]) -> [Int] {
    
    var leftPileCopy = leftPile
    var rightPileCopy = rightPile
    
    var orderedPile = [Int]()
    
    while !leftPileCopy.isEmpty && !rightPileCopy.isEmpty {
        if leftPileCopy.first! <= rightPileCopy.first! {
            orderedPile.append(leftPileCopy.first!)
            leftPileCopy.removeFirst()
        } else {
            orderedPile.append(rightPileCopy.first!)
            rightPileCopy.removeFirst()
        }
    }
    
    // By this stage, only one array will have anything in it
    while !leftPileCopy.isEmpty {
        orderedPile.append(leftPileCopy.first!)
        leftPileCopy.removeFirst()
    }
    
    while !rightPileCopy.isEmpty {
        orderedPile.append(rightPileCopy.first!)
        rightPileCopy.removeFirst()
    }
    return orderedPile
}

var leftpile = [1,3,5]
var rightpile = [2,4,6]

print(mergeAlt(leftPile: leftpile, rightPile: rightpile))
