//
//  LT_1_TwoSum.swift
//  YDLearn
//
//  Created by gaoyuan on 2021/10/28.
//

import UIKit

class LT_1_TwoSum: NSObject, LTSolution {
    
    func solution() {
        twoSum([2,7,11,15], 9)
    }
    
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var result: [Int] = []
        for (i, num) in nums.enumerated() {
            let kNum = target - num
            if nums.contains(kNum) {
                let kIndex = nums.firstIndex(of: kNum)!
                if kIndex == i {
                    continue
                }
                result.append(kIndex)
                result.append(i)
                break
            }
            print(i, num)
        }
        return result
    }
}
