//
//  LT_3_LengthOfLongestSubstring.swift
//  YDLearn
//
//  Created by gaoyuan on 2021/10/28.
//

import UIKit


/// 滑动窗口问题
class LT_3_LengthOfLongestSubstring: NSObject, LTSolution {
    
    func solution() {
        let result = lengthOfLongestSubstring("au")
    }
    
    func lengthOfLongestSubstring(_ s: String) -> Int {
        let array = s.map({String($0)})
        if array.count == 0 { return 0 }
        if array.count == 1 { return 1 }
        var rArray = [String]()
        var rCount = 0
        var endIndex = 1
        while endIndex <= array.count {
            let newStr = array[endIndex - 1]
            if !rArray.contains(newStr) {
                rArray.append(newStr)
                rCount = rArray.count > rCount ? rArray.count : rCount
            } else {
                let firstIndex = rArray.firstIndex(of: newStr)!
                for i in 0...firstIndex {
                    rArray.remove(at: 0)
                }
                rArray.append(newStr)
            }
            endIndex += 1
        }
        return rCount
    }
}


/**
 func lengthOfLongestSubstring(_ s: String) -> Int {
     let array = s.map({String($0)})
     if array.count == 0 { return 0 }
     
     var strStartIndex = 0
     var strEndIndex = 1
     var maxCount = 1
     var rCount = maxCount
     while strEndIndex != array.count {
         let newStr = array[strEndIndex]
         let curArray = array[strStartIndex...strEndIndex-1]
         
         print("1_____\(curArray)   ___   \(newStr)   ___   \(strStartIndex)   ___    \(strEndIndex)")
         if !curArray.contains(newStr) {
             maxCount += 1
             rCount = maxCount > rCount ? maxCount : rCount
         } else {
             let startOffset = curArray.firstIndex(of: newStr)!
             strStartIndex += startOffset
             let newCurArray = array[strStartIndex...strEndIndex-1]
             maxCount = 1
             
             print("")
         }
         strEndIndex += 1
     }
     return rCount
 }
 */
