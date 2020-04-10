// Problem: https://leetcode.com/problems/decompress-run-length-encoded-list/

class Solution {
    func decompressRLElist(_ nums: [Int]) -> [Int] {
        var count = 0
        var output = [Int]()
        
        for n in 0..<nums.count {
            if n % 2 == 0 {
                count = nums[n]
            } else if n % 2 == 1 {
                for _ in 0..<count {
                    output.append(nums[n])
                }
            }
        }
        
        return output
    }
}
