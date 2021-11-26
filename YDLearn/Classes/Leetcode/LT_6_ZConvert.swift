//
//  LT_6_ZConvert.swift
//  YDLearn
//
//  Created by gaoyuan on 2021/11/24.
//

import UIKit

//将一个给定字符串 s 根据给定的行数 numRows ，以从上往下、从左到右进行 Z 字形排列。
class LT_6_ZConvert: NSObject, LTSolution {
    func solution() {
        convert("PAYPALISHIRING", 3)
        //PAHNAPLSIIGYIR
    }
    
    func convert(_ s: String, _ numRows: Int) -> String {
        if numRows<2{
            return s
        }
        var strArr=Array<String>()
        for _ in 0..<numRows{
            strArr.append("")
        }
        for (index,char) in s.enumerated(){
            let num=index%(numRows*2-2)
            if num<numRows{
                strArr[num].append(char)
            }else{
                strArr[numRows*2-2-num].append(char)
            }
        }
        return strArr.joined()
    }
}


/*
 //
 //  LT_6_ZConvert.swift
 //  YDLearn
 //
 //  Created by gaoyuan on 2021/11/24.
 //
 
 import UIKit
 
 //将一个给定字符串 s 根据给定的行数 numRows ，以从上往下、从左到右进行 Z 字形排列。
 class LT_6_ZConvert: NSObject, LTSolution {
 func solution() {
 convert("AB", 1)
 //PAHNAPLSIIGYIR
 }
 
 struct Node {
 var str = ""
 var row = 0
 var col = 0
 init(str: String, row: Int, col: Int) {
 self.str = str
 self.row = row
 self.col = col
 }
 }
 
 func convert(_ s: String, _ numRows: Int) -> String {
 let array = s.map({String($0)})
 var nodes = [Node]()
 var col = 0
 var row = 0
 var up = false
 if numRows <= 2 {
 var r = ""
 for (i, str) in array.enumerated() {
 r += str
 }
 return r
 }
 for (i, str) in array.enumerated() {
 print("\(str) --- col:\(col) --- row:\(row)")
 let node = Node(str: str, row: row, col: col)
 nodes.append(node)
 if up {
 if row > 1 {
 row -= 1
 } else {
 up = !up
 col += 1
 row -= 1
 }
 }
 else {
 if row < numRows-1 {
 row += 1
 } else {
 up = !up
 col += 1
 row -= 1
 }
 }
 print("")
 }
 let rNodes = nodes.sorted(by: {$0.row < $1.row})
 
 var result = ""
 for node in rNodes {
 print("\(node.str) --- col: \(node.col) --- row: \(node.row)")
 result += node.str
 }
 print("")
 return result
 }
 }
 
 */
