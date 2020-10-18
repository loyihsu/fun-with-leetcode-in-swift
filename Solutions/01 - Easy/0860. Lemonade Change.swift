// Problem: https://leetcode.com/problems/lemonade-change/

class Solution {
    func lemonadeChange(_ bills: [Int]) -> Bool {
        var myChanges = [Int](repeating: 0, count: 2)
        for bill in bills {
            if bill == 5 {
                myChanges[0] += 1
            } else if bill == 10 {
                if myChanges[0] > 0 {
                    myChanges[0] -= 1
                    myChanges[1] += 1
                } else {
                    return false
                }
            } else {
                if myChanges[0] > 0 && myChanges[1] > 0 {
                    myChanges[0] -= 1
                    myChanges[1] -= 1
                } else if myChanges[0] >= 3 {
                    myChanges[0] -= 3
                } else {
                    return false
                }
            }
        }
        return true
    }
}
