// Problem: https://leetcode.com/problems/permutations/

class Solution {
    func permute(_ nums: [Int]) -> [[Int]] {
        guard nums.count > 1 else { return [nums] }
        guard nums.count > 2 else { return [nums, nums.reversed()] }
        var output = [[Int]]()
        for (index, value) in nums.enumerated() {
            var temp = nums
            temp.remove(at: index)
            permute(temp).forEach {
                var cur = [value]
                cur.append(contentsOf: $0)
                output.append(cur)
            }
        }
        return output
    }
}
