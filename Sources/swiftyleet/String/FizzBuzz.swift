//
//  File.swift
//  
//
//  Created by zhaorui on 2021/5/22.
//

import Foundation
extension Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        var answers: [String] = []
        for i in 1...n {
            if i % 3 == 0 && i % 5 == 0 {
                answers.append("FizzBuzz")
            } else if i % 3 == 0 {
                answers.append("Fizz")
            } else if i % 5 == 0 {
                answers.append("Buzz")
            } else {
                answers.append("\(i)")
            }
        }
        return answers
    }
}
