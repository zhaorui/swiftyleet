//
//  File.swift
//  
//
//  Created by zhaorui on 2021/5/14.
//
// 475. Heaters
// Winter is coming! During the contest, your first job is to design a standard heater with a fixed warm radius
// to warm all the houses. Every house can be warmed, as long as the house is within the heater's warm radius range.
// Given the positions of houses and heaters on a horizontal line, return the minimum radius standard of heaters so that
// those heaters could cover all houses. Notice that all the heaters follow your radius standard,
// and the warm radius will the same.

/*
 Input: houses = [1,2,3], heaters = [2]
 Output: 1
 Explanation: The only heater was placed in the position 2, and if we use the radius 1 standard,
 then all the houses can be warmed.
 
 Input: houses = [1,2,3,4], heaters = [1,4]
 Output: 1
 Explanation: The two heater was placed in the position 1 and 4. We need to use radius 1 standard,
 then all the houses can be warmed.
 
 Input: houses = [1,5], heaters = [2]
 Output: 3
 */


import Foundation

extension Solution {
    func findRadius(_ houses: [Int], _ heaters: [Int]) -> Int {
        var i = 0, radius = 0
        let houses = houses.sorted(), heaters = heaters.sorted()
        
        for house in houses {
            while i < heaters.count - 1 && 2 * house >= heaters[i] + heaters[i + 1]  {
                i += 1
            }
            radius = max(radius, abs(house - heaters[i]))
        }
        
        return radius
    }
}
