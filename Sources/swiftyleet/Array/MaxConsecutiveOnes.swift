//
//  File.swift
//  
//
//  Created by zhaorui on 2021/5/13.
//

import Foundation
/*
 485. Max Consecutive Ones
 Given a binary array nums, return the maximum number of consecutive 1's in the array.
 Input: nums = [1,1,0,1,1,1]
 Output: 3
 Explanation: The first two digits or the last three digits are consecutive 1s. The maximum number of consecutive 1s is 3.
 */

extension Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var max = 0
        var ret = nums.reduce(into: 0) { result, n in
            if n == 1 {
                result += 1
            } else {
                if result > max {
                    max = result
                }
                result = 0
            }
        }
        if ret > max {
            max = ret
        }
        return max
    }
}
