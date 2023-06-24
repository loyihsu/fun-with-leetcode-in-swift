// Problem: https://leetcode.com/problems/take-gifts-from-the-richest-pile/description/

import Foundation

class Solution {
    func pickGifts(_ gifts: [Int], _ k: Int) -> Int {
        var gifts = gifts.map(Double.init)
        return gifts
            .sqrtMax(times: k)
            .map(Int.init)
            .reduce(0, +)
    }
}

extension [Double] {
    mutating func sqrtMax(times: Int) -> Self {
        for _ in 0 ..< times {
            let max = findMax()
            self = enumerated()
                .map { index, value in
                    if index == max {
                        return sqrt(value)
                    } else {
                        return value
                    }
                }
        }
        return self
    }

    func findMax() -> Int {
        var position = 0
        for idx in indices where max(self[position], self[idx]) != self[position] {
            position = idx
        }
        return position
    }

    func max(_ lhs: Double, _ rhs: Double) -> Double {
        lhs >= rhs ? lhs : rhs
    }
}
