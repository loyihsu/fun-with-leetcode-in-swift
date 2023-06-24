// Problem: https://leetcode.com/problems/subarray-sum-equals-k/

class Solution {
    func subarraySum(_ nums: [Int], _ k: Int) -> Int {
        var count = 0

        let runningSum = nums.reduce(into: [Int]()) { partial, next in
            if let last = partial.last {
                partial.append(last + next)
            } else {
                partial.append(next)
            }
        }

        var sumDict = [0: 1]
        for sum in runningSum {
            let complement = sum - k
            if let complementCount = sumDict[complement] {
                count += complementCount
            }
            sumDict[sum, default: 0] += 1
        }

        return count
    }
}
