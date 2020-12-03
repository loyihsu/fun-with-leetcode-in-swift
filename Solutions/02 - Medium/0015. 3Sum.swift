// Problem: https://leetcode.com/problems/3sum/

class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        guard nums.count >= 3 else { return [] }
        let sorted = nums.sorted()
        var result = Set<[Int]>()
        for idx in 0..<sorted.count-1 {
            var left = idx + 1, right = sorted.count-1
            while left < right {
                let sum = sorted[idx] + sorted[left] + sorted[right]
                if sum == 0 {
                    result.insert([sorted[idx],sorted[left],sorted[right]])
                    left += 1
                    while sorted[left] == sorted[left - 1] && left < right {
                        left += 1
                    }
                } else if sum > 0 {
                    right -= 1
                } else {
                    left += 1
                }
            }            
        }
        return Array(result)
    }
}
