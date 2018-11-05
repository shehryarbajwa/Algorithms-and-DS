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
