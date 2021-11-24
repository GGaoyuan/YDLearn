//
//  LT_5_LongestPalindrome.swift
//  YDLearn
//
//  Created by gaoyuan on 2021/11/22.
//

import UIKit

/// 最长回文子串
/// 根据回文串的定义，正着和反着读一样
class LT_5_LongestPalindrome: NSObject, LTSolution {
    
    func solution() {
        longestPalindrome("aaaa")
    }
    
    func longestPalindrome(_ s: String) -> String {
        if s.count == 0 { return "" }
        let array = s.map({String($0)})
        var left = 0
        var right = 0
        var length = 1
        var maxLength = 0
        var maxStart = 0
        for (i, str) in array.enumerated() {
            left = i - 1
            right = i + 1
            while left >= 0 && array[left] == array[i] {
                length += 1
                left -= 1
            }
            while right < array.count && array[right] == array[i] {
                length += 1
                right += 1
            }
            while left >= 0 && right < array.count && array[left] == array[right] {
                length += 2
                left -= 1
                right += 1
            }
            if length > maxLength {
                maxLength = length
                maxStart = left
            }
            length = 1
        }
        let start = s.index(s.startIndex, offsetBy: maxStart + 1)
        let end = s.index(s.startIndex, offsetBy: maxStart + maxLength + 1)
        let result = s[start..<end]
        
        let str = "123456"
//        let a = str.subs
        let a = str.subString(from: 0, to: 1)
        return String(result)
    }
}

/*
 2.0
 let array = s.map({String($0)})
 
 var r = ""
 var t = ""
 
 var leftIdx = 0
 var rightIdx = 0
 for (i, str) in array.enumerated() {
     t = str
     leftIdx = i - 1
     rightIdx = i + 1
     
     while (true) {
         if leftIdx < 0 {
             if array[rightIdx] == t {
                 t = array[rightIdx] + t
                 rightIdx += 1
             } else {
                 break
             }
         }
         else if array.count == rightIdx {
             
             var same: Bool = true
             for s in r.map({String($0)}) {
                 if str != s {
                     same = false
                     break
                 }
             }
             if same {
                 r.append(str)
             }
             break
         }
         else if array[leftIdx] == array[rightIdx] {
             t = array[leftIdx] + t + array[rightIdx]
             leftIdx -= 1
             rightIdx += 1
             print("1111 - \(t)")
         }
         else if array[leftIdx] == t {
             t = array[leftIdx] + t
             print("2222 - \(t)")
         }
         else if array[rightIdx] == t {
             t = array[rightIdx] + t
             print("3333 - \(t)")
         }
         else {
             print("4444 - \(t)")
             break
         }
     }
     //            print(t)
     r = t.count > r.count ? t : r
 }
 print("end")
 return r
 */


/*
 1.0
 while (true) {
     if leftIdx < 0 {
         if array[rightIdx] == t {
             t = array[rightIdx] + t
             rightIdx += 1
         } else {
             break
         }
     }
     else if array.count == rightIdx {
         
         break
     }
     else if array[leftIdx] == array[rightIdx] {
         t = array[leftIdx] + t + array[rightIdx]
         leftIdx -= 1
         rightIdx += 1
         print("1111 - \(t)")
     }
     else if array[leftIdx] == t {
         t = array[leftIdx] + t
         print("2222 - \(t)")
     }
     else if array[rightIdx] == t {
         t = array[rightIdx] + t
         print("3333 - \(t)")
     }
     else {
         print("4444 - \(t)")
         break
     }
 }
 */



/*
 for (i, str) in array.enumerated() {
 t = str
 leftIdx = i - 1
 rightIdx = i + 1
 
 if leftIdx < 0 && rightIdx < array.count {
 if array[rightIdx] == t {
 t = array[rightIdx] + t
 }
 } else {
 while (leftIdx >= 0) && (rightIdx < array.count) {
 if array[leftIdx] == array[rightIdx] {
 t = array[leftIdx] + t + array[rightIdx]
 leftIdx -= 1
 rightIdx += 1
 } else if array[leftIdx] == t {
 t = array[leftIdx] + t
 } else if array[rightIdx] == t {
 t = array[rightIdx] + t
 } else {
 break
 }
 }
 }
 print(t)
 r = t.count > r.count ? t : r
 }
 */
