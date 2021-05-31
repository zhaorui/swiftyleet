//
//  File.swift
//  
//
//  Created by zhaorui on 2021/5/31.
//

import Foundation
/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}
extension Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var prev = head
        var cur = head?.next
        var tmp: ListNode?
        
        while cur != nil {
            tmp = cur?.next
            cur?.next = prev
            prev = cur
            cur = tmp
        }
        head?.next = nil
        return prev
    }
}

func testLinkedList() {
    var head = ListNode()
    var one = ListNode(1)
    var two = ListNode(2)
    var three = ListNode(3)

    head.next = one
    one.next = two
    two.next = three
    
    var result = Solution().reverseList(head)
    while result != nil {
        print("\(result!.val)")
        result = result?.next
    }
}
