// Problem: https://leetcode.com/problems/two-sum/

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for i in 0..<nums.count {
            for j in 0..<nums.count {
                if i != j && nums[i]+nums[j] == target {
                    return [i,j]
                }
            }
        }
        return [Int]()
    }
}
