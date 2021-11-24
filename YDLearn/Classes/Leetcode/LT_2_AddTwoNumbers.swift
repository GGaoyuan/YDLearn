//
//  LT_2_AddTwoNumbers.swift
//  YDLearn
//
//  Created by gaoyuan on 2021/10/28.
//

import UIKit

class LT_2_AddTwoNumbers: NSObject, LTSolution {
    
    class ListNode: NSObject {
        public var val: Int
        public var next: ListNode?
        public override init() {
            self.val = 0;
            self.next = nil;
        }
        public init(_ val: Int) {
            self.val = val;
            self.next = nil;
        }
        public init(_ val: Int, _ next: ListNode?) {
            self.val = val;
            self.next = next;
        }
    }
    
    func solution() {
        let node17 = ListNode(9)
        let node16 = ListNode(9, node17)
        let node15 = ListNode(9, node16)
        let node14 = ListNode(9, node15)
        let node13 = ListNode(9, node14)
        let node12 = ListNode(9, node13)
        let node11 = ListNode(9, node12)
        
        let node24 = ListNode(9)
        let node23 = ListNode(9, node24)
        let node22 = ListNode(9, node23)
        let node21 = ListNode(9, node22)
        
        addTwoNumbers(node11, node21)
    }
    
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {

        var nodeResult1 = nodeNum(l1)
        var nodeResult2 = nodeNum(l2)

        if nodeResult1.count > nodeResult2.count {
            for i in 0..<(nodeResult1.count - nodeResult2.count) {
                nodeResult2.append(0)
            }
        }
        else if nodeResult1.count < nodeResult2.count {
            for i in 0..<(nodeResult2.count - nodeResult1.count) {
                nodeResult1.append(0)
            }
        }
        
        var resultArray: [Int] = []
        var carray = 0
        for (i, num1) in nodeResult1.enumerated() {
            let num2 = nodeResult2[i]
            var num = num1 + num2 + carray
            if num >= 10 {
                carray = 1
                num -= 10
            } else {
                carray = 0
            }
            resultArray.append(num)
        }
        if carray == 1 {
            resultArray.append(1)
        }
        
        var listNode: ListNode?
        var currentNode: ListNode?
        for num in resultArray.reversed() {
            if currentNode != nil {
                listNode = ListNode(num, currentNode!)
            } else {
                listNode = ListNode(num)
            }
            currentNode = listNode
        }
        return listNode
    }
    
    func nodeNum(_ node: ListNode?) -> [Int] {
        var resultArray: [Int] = []
        
        var currentNode: ListNode? = node
        resultArray.append(currentNode?.val ?? 0)
        while currentNode?.next != nil {
            let nextNode = currentNode!.next!
            currentNode = nextNode
            resultArray.append(currentNode!.val)
        }
        return resultArray
    }
    
}

/**
 func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
     var nodeResult1 = String(nodeNum(l1)).compactMap({Int(String($0))})
     var nodeResult2 = String(nodeNum(l2)).compactMap({Int(String($0))})
     
     if nodeResult1.count > nodeResult2.count {
         for i in 0..<(nodeResult1.count - nodeResult2.count) {
             nodeResult2.insert(0, at: 0)
         }
     }
     else if nodeResult1.count < nodeResult2.count {
         for i in 0..<(nodeResult2.count - nodeResult1.count) {
             nodeResult1.insert(0, at: 0)
         }
     }
     
     var needCarray = 0
     var resultArray: [Int] = []
     for (i, num1) in nodeResult1.reversed().enumerated() {
         let num2 = nodeResult2.reversed()[i]
         var num = num1 + num2 + needCarray
         if num >= 10 {
             needCarray = 1
             num -= 10
         } else {
             needCarray = 0
         }
         resultArray.append(num)
         
         if i == nodeResult1.count-1 && needCarray == 1 {
             resultArray.append(1)
         }
     }
     var listNode: ListNode?
     var currentNode: ListNode?
     for num in resultArray.reversed() {
         if currentNode != nil {
             listNode = ListNode(num, currentNode!)
         } else {
             listNode = ListNode(num)
         }
         currentNode = listNode
     }
     return listNode
 }
 
 func nodeNum(_ node: ListNode?) -> Int {
     var currentNode: ListNode? = node
     var nodeResult = currentNode?.val ?? 0
     var loopNum = 1;
     while currentNode?.next != nil {
         let nextNode = currentNode!.next!
         loopNum *= 10;
         nodeResult = nodeResult + nextNode.val * loopNum
         currentNode = nextNode
     }
     return nodeResult
 }
 
 */


/**
 func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
     let nodeResult1 = nodeNum(l1)
     let nodeResult2 = nodeNum(l2)
     
     let result = (nodeResult1 + nodeResult2)
     let resultArray = String(result).compactMap({Int(String($0))})
     
     var listNode: ListNode?
     var currentNode: ListNode?
     for num in resultArray {
         if currentNode != nil {
             listNode = ListNode(num, currentNode!)
         } else {
             listNode = ListNode(num)
         }
         currentNode = listNode
     }
     return listNode
 }
 
 func nodeNum(_ node: ListNode?) -> Int {
     var currentNode: ListNode? = node
     var nodeResult = currentNode?.val ?? 0
     var loopNum = 1;
     while currentNode?.next != nil {
         let nextNode = currentNode!.next!
         loopNum *= 10;
         nodeResult = nodeResult + nextNode.val * loopNum
         currentNode = nextNode
     }
     return nodeResult
 }
 */
