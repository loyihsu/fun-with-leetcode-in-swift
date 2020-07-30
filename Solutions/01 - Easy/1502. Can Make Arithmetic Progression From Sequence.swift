// Problem: https://leetcode.com/problems/can-make-arithmetic-progression-from-sequence/

class Solution {
    func canMakeArithmeticProgression(_ arr: [Int]) -> Bool {
        let sorted = arr.sorted()
        var distance = sorted[1] - sorted[0]
        
        for i in 1..<sorted.count {
            if distance != sorted[i] - sorted[i-1] {
                return false
            }
        }
        
        return true
    }
}
