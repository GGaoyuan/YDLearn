//
//  LT_3_LengthOfLongestSubstring.swift
//  YDLearn
//
//  Created by gaoyuan on 2021/10/28.
//

import UIKit

class LT_3_LengthOfLongestSubstring: NSObject, LTSolution {
    
    func solution() {
        let result = lengthOfLongestSubstring("abcabcbb")
        print(result)
    }
    
    func lengthOfLongestSubstring(_ s: String) -> Int {
        let array = s.map({String($0)})
        var result: [String] = []
        var tempResult: [String] = []
        var index = 0
        while index != array.count {
            if !tempResult.contains(array[index]) {
                tempResult.append(array[index])
            } else {
                
            }
            index += 1
        }
        return result.count
    }
}
