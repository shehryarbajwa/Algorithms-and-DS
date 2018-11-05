//
//  Count Inversions with MergeSort.swift
//  Algorithms Practice Swift
//
//  Created by Shehryar Bajwa on 2018-10-22.
//  Copyright © 2018 Shehryar Bajwa. All rights reserved.
//

import Foundation

func mergewithInversion(leftsortedArray : [Int] ,rightSortedArray : [Int]) -> [Int]{
    
    //Initialize the leftSortedArray and Right Sorted Array
    
    var leftarraycopy = leftsortedArray
    var rightarraycopy = rightSortedArray
    
    //Initialize the output array
    var orderedList = [Int]()
    
    
    //Run a while loop if the left and the right Arrays are not empty
    while !leftarraycopy.isEmpty && !rightarraycopy.isEmpty {
        
        //If the first element in the leftArray is less than firstElement in the secondArray then append the output array with the first element of the first array. Once the first element has been added, remove the element from the array to increment the index
        if leftarraycopy.first! <= rightarraycopy.first! {
            orderedList.append(leftarraycopy.first!)
            leftarraycopy.removeFirst()
        } else {
        //If the first element in the leftArray is not equal to the firstelement in the rightArray then append the output array with the firstelement in the rightArray and remove the firstElement in the rightArray to increment the index
        
            orderedList.append(rightarraycopy.first!)
            rightarraycopy.removeFirst()
        }
    }
        //At this point, if the two arrays are not equal in size, and one array is larger than the other, the above while loop will just stop till it compares elements equivalents to each index. Therefore we will run another while loop to add the remaining elements in the original left and rightArrays.
        //Note that only one of the arrays will have elements not added since one of the arrays can be a size bigger than the other. Since we can't be sure which array it will be, we will run the while loop again on the array which is not empy
        
        while !leftarraycopy.isEmpty {
            orderedList.append(leftarraycopy.first!)
            leftarraycopy.removeFirst()
        }
        
        while !rightarraycopy.isEmpty {
            orderedList.append(rightarraycopy.first!)
            rightarraycopy.removeFirst()
        }
    return orderedList
}


var leftsorted = [1...49999]
var rightsorted = [50000...100000]


//Print the following command to run the function
//print(mergewithInversion(leftsortedArray: leftsorted, rightSortedArray: rightsorted))
    
    

