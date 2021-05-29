//
//  File.swift
//  
//
//  Created by 赵睿 on 2021/5/29.
//

import Foundation

// 4000ms solution
class MinStack {
    
    var array = [Int]()
    
    /** initialize your data structure here. */
    init() {
        
    }
    
    func push(_ val: Int) {
        array.append(val)
    }
    
    func pop() {
        //array = array.dropLast()
        // use removeLast is faster than dropLast
        array.removeLast()
    }
    
    func top() -> Int {
        return array.last!
    }
    
    func getMin() -> Int {
        return array.min()!
    }
    
}

// 70ms solution                          
class MinStack2 {

    var array = [Int]()
    var minArray = [Int]()
    
    /** initialize your data structure here. */
    init() {
        
    }
    
    func push(_ val: Int) {
        array.append(val)
        if minArray.isEmpty || val <= minArray.last! {
            minArray.append(val)
        }
    }
    
    func pop() {
        //guard !array.isEmpty else { return }
        //array = array.dropLast()
        // use removeLast is faster than dropLast
        let removal = array.removeLast()
        if removal <= minArray.last! {
            minArray.removeLast()
        }
    }
    
    func top() -> Int {
      return array.last!
    }
    
    func getMin() -> Int {
        return minArray.last!
    }
  
}

/**
 * Your MinStack object will be instantiated and called as such:
 * let obj = MinStack()
 * obj.push(val)
 * obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Int = obj.getMin()
 */
