//
//  VerifyAnAlienDictionary.swift
//  
//
//  Created by zhaorui on 2021/5/12.
//

/*
 953. Verifying an Alien Dictionary
 In an alien language, surprisingly they also use english lowercase letters,
 but possibly in a different order. The order of the alphabet is some permutation of lowercase letters.
 Given a sequence of words written in the alien language, and the order of the alphabet,
 return true if and only if the given words are sorted lexicographicaly in this alien language.
 */

import Foundation

extension String {
    func alienLess(_ word: String, orderMap: [Character:String.Index]) -> Bool {
        let compareLen = min(self.count, word.count)
        for idx in 0..<compareLen {
            if self[self.index(self.startIndex, offsetBy: idx)] == word[word.index(word.startIndex, offsetBy: idx)] { continue }
            return orderMap[self[self.index(self.startIndex, offsetBy: idx)]]! < orderMap[word[word.index(word.startIndex, offsetBy: idx)]]!
        }
        return self.count <= word.count
    }
}

class Solution {
    
    func isAlienSorted(_ words: [String], _ order: String) -> Bool {
        var alienOrderMap = [Character:String.Index]()
        "abcdefghijklmnopqrstuvwxyz".forEach { c in
            let i = order.firstIndex(of: c)
            alienOrderMap[c] = i
        }
        for i in 0..<words.count-1 {
            if !words[i].alienLess(words[i+1], orderMap: alienOrderMap) { return false }
        }
        return true
    }
    
}
