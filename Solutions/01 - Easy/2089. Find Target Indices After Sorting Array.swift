// Problem: https://leetcode.com/problems/find-target-indices-after-sorting-array/

class Solution {
    func targetIndices(_ nums: [Int], _ target: Int) -> [Int] {
        var count = (less: 0, equal: 0)
        for num in nums {
            count.less += (num < target ? 1 : 0)
            count.equal += (num == target ? 1 : 0)
        }
        return Array(count.less..<count.less+count.equal)
    }
}
