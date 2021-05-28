//
//  File.swift
//  
//
//  Created by zhaorui on 2021/5/28.
//

import Foundation

//345. Reverse Vowels of a String

//Given a string s, reverse only all the vowels in the string and return it.
//
//The vowels are 'a', 'e', 'i', 'o', and 'u', and they can appear in both cases.
//

//
//Example 1:
//
//Input: s = "hello"
//Output: "holle"
//Example 2:
//
//Input: s = "leetcode"
//Output: "leotcede"

extension Solution {
    /// TIme Limit, not accepted
    func reverseVowels(_ s: String) -> String {
        var result = Array(s)
        let vowels = "aeiouAEIOU"
        let vowels_list = s.enumerated().filter({vowels.contains($0.element)})
        var r_vowels_list = Array(vowels_list.reversed())
        for vowel in vowels_list {
            result[vowel.offset] = r_vowels_list.first!.element
            r_vowels_list = Array(r_vowels_list.dropFirst())
        }
        return String(result)
    }
}

extension Solution2 {
    func reverseVowels(_ s: String) -> String {
        let vowels = "aeiouAEIOU"
        
        var result = Array(s)
        var head = 0, tail = s.count - 1
        while head < tail {
            let head_is_vowels = vowels.contains(result[head])
            let tail_is_vowels = vowels.contains(result[tail])
            if head_is_vowels && tail_is_vowels {
                result.swapAt(head, tail)
                head += 1
                tail -= 1
            }
            if !head_is_vowels {
                head += 1
            }
            if !tail_is_vowels {
                tail -= 1
            }
        }
        return String(result)
    }
}
