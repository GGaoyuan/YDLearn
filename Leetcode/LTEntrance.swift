//
//  LTEntrance.swift
//  YDLearn
//
//  Created by gaoyuan on 2021/10/25.
//

import Foundation

public class LTEntrance: NSObject {
    
    public class func solution() {
        LT_1_TwoSum().solution()
        LT_2_AddTwoNumbers().solution()
        LT_3_LengthOfLongestSubstring().solution()
    }
}

protocol LTSolution: NSObjectProtocol {
    func solution()
}
