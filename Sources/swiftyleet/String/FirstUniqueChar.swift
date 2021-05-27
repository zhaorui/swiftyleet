//
//  File.swift
//  
//
//  Created by zhaorui on 2021/5/27.
//

//Given a string s, return the first non-repeating character in it and return its index. If it does not exist, return -1.
//
//Example 1:
//
//Input: s = "leetcode"
//Output: 0
//Example 2:
//
//Input: s = "loveleetcode"
//Output: 2
//Example 3:
//
//Input: s = "aabb"
//Output: -1
//
//
//Constraints:
//
//1 <= s.length <= 105
//s consists of only lowercase English letters.



import Foundation

extension Solution {
    func firstUniqChar(_ s: String) -> Int {
        var results = [(Int, Character)]()
        var set = Set<Character>()
        
        for ch in s.enumerated() {
            if set.contains(ch.element) {
                results.removeAll { $0.1 == ch.element }
            } else {
                set.insert(ch.element)
                results.append(ch)
            }
        }
        
        if results.isEmpty {
            return -1
        } else {
            return results[0].0
        }
    }
}
