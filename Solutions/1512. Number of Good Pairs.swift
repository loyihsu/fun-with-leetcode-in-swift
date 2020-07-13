// Problem: https://leetcode.com/problems/number-of-good-pairs/

class Solution {
    func numIdenticalPairs(_ nums: [Int]) -> Int {
        var output = 0, count = [Int:Int]()
        
        for num in nums {
            output += count[num] ?? 0
            count[num] = (count[num] ?? 0) + 1
        }
        
        return output
    }
}
