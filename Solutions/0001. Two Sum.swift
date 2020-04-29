// Problem: https://leetcode.com/problems/two-sum/

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var hashmap = [Int: Int]()
        
        var count = nums.count
        
        for n in 0..<count {
            hashmap[nums[n]] = n
        }
        
        for i in 0..<count {
            if let value = hashmap[target - nums[i]] {
                if value != i {
                    return [i, value]
                }
            }
        }
        
        return [Int]()
    }
}