//
//  TwoSum.swift
//  ALG
//
//  Created by GaoJie Wan on 2022/5/11.
//

import UIKit

class TwoSum: NSObject {
    func TwoSum(_ nums: [Int], _ target: Int ) -> [Int] {
        
        var dict = [Int: Int]()
        
        for (i, num) in nums.enumerated() {
            
            if let lastIndex = dict[target - num] {
                return [lastIndex, i]
            }
            
            dict[num] = i
        }
        fatalError("No valid outputs")
    }
}
