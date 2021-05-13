//
//  File.swift
//  
//
//  Created by zhaorui on 2021/5/13.
//

/*
 905. Sort Array By Parity
 Given an array nums of non-negative integers, return an array consisting of all the even elements of nums,
 followed by all the odd elements of nums. You may return any answer array that satisfies this condition.
 Example 1:
 Input: nums = [3,1,2,4]
 Output: [2,4,3,1]
 The outputs [4,2,3,1], [2,4,1,3], and [4,2,1,3] would also be accepted.
 */

extension Solution {
    func sortArrayByParity(_ nums: [Int]) -> [Int] {
        var n = [Int]()
        for i in nums {
            if i % 2 != 0 {
                n.append(i)
            } else {
                n.insert(i, at: n.startIndex)
            }
        }
        return n
    }
}

extension Solution2 {
    func sortArrayByParity(_ nums: [Int]) -> [Int] {
        nums.enumerated().reduce(into: [Int]()) { acc, arg in
            acc.insert(arg.element, at: arg.element.isMultiple(of: 2) ? 0 : acc.count)
        }
    }
}


import Foundation
