// Problem: https://leetcode.com/problems/two-sum/

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var hashmap = [Int: Int](), output = [Int]()

        nums.enumerated().forEach { hashmap[$1] = $0 }

        for index in nums.indices {
            if let value = hashmap[target - nums[index]], value != index {
                output = [index, value]
                break
            }
        }

        return output
    }
}
