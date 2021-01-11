// Problem: https://leetcode.com/problems/three-consecutive-odds/

class Solution {
    func threeConsecutiveOdds(_ arr: [Int]) -> Bool {
        var previousThree = (false, false, false)
        for num in arr {
            previousThree.0 = previousThree.1
            previousThree.1 = previousThree.2
            previousThree.2 = num % 2 == 1
            if previousThree == (true, true, true) {
                return true
            }
        }
        return false
    }
}
