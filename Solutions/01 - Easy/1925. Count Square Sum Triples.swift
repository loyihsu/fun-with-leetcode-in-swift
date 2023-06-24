// Problem: https://leetcode.com/problems/count-square-sum-triples/

import Foundation

class Solution {
    func isInteger(_ double: Double) -> Bool {
        Double(Int(double)) == double
    }

    func countTriples(_ n: Int) -> Int {
        var count = 0
        for idx in 1 ... n {
            for jdx in idx ... n {
                let double: Double = sqrt(Double(idx * idx + jdx * jdx))
                if Int(double) > n {
                    break
                }
                let change = idx == jdx ? 1 : 2
                count = isInteger(double) ? count + change : count
            }
        }
        return count
    }
}
