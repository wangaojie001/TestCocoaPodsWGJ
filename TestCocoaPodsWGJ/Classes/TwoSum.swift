//
//  TwoSum.swift
//  ALG
//
//  Created by GaoJie Wan on 2022/5/11.
//

import UIKit

class TwoSum: NSObject {
    
    //添加最新版测试 0.3.0
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
