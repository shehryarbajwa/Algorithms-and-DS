//
//  QuickSort.swift
//  Algorithms Practice Swift
//
//  Created by Shehryar Bajwa on 2018-11-05.
//  Copyright © 2018 Shehryar Bajwa. All rights reserved.
//

import Foundation



func quickSort <T : Comparable > (_ a: [T]) -> [T]{
    
    guard a.count > 1 else {return a}
    
    let pivot = a[a.count/2]
    let less = a.filter { $0 < pivot}
    let great = a.filter { $0 > pivot}
    let equal = a.filter { $0 == pivot}
    
    
    return quickSort(less) + quickSort(great)
    
}


func HoareQuickSort <T: Comparable > (_ a : inout [T], low: Int , high:Int) -> Int {
    
    let pivot = a[low]
    
    var i = low - 1
    var j = high + 1
    
    while true {
        repeat { j -= 1} while a[j] > pivot
        repeat { i += 1} while a[j] < pivot
        
        if i < j {
            a.swapAt(i, j)
        } else {
            return
        }
    }
    
    
}
