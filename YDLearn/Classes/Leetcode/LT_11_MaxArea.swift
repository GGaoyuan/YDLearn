//
//  LT_11_MaxArea.swift
//  YDLearn
//
//  Created by gaoyuan on 2021/11/26.
//

import UIKit

class LT_11_MaxArea: NSObject, LTSolution {
    func solution() {
//        maxArea([1,8,6,2,5,4,8,3,7])
//        maxArea([1,1])
//        maxArea([1,2,1])
        maxArea([4,3,2,1,4])
    }
    
    func maxArea(_ height: [Int]) -> Int {
        var result = 0
        for i in 0..<height.count {
            for j in i..<height.count {
                let l = j - i
                let h = height[i] > height[j] ? height[j] : height[i]
                let s = l * h
                result = s > result ? s : result
            }
        }
        print(result)
        return result
    }
}
