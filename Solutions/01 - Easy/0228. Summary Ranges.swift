// Problem: https://leetcode.com/problems/summary-ranges/

class Solution {
    func summaryRanges(_ nums: [Int]) -> [String] {
        guard let first = nums.first else { return [] }
        guard nums.count > 1 else { return ["\(first)"] }
        var prev = first, start = first, output = [String]()
        for idx in 1 ..< nums.count {
            if nums[idx] != prev + 1 {
                output.append(start != prev ? "\(start)->\(prev)" : "\(start)")
                start = nums[idx]
            }
            prev = nums[idx]
        }
        output.append(start != prev ? "\(start)->\(prev)" : "\(start)")
        return output
    }
}
