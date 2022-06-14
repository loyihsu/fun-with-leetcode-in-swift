// Problem: https://leetcode.com/problems/minimum-distance-to-the-target-element/

class Solution {
    func getMinDistance(_ nums: [Int], _ target: Int, _ start: Int) -> Int {
        guard nums[start] != target else { return 0 }
        var output = Int.max
        for idx in nums.indices where nums[idx] == target {
            let val = abs(start - idx)
            output = output > val ? val : output
        }
        return output
    }
}
