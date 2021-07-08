// Problem: https://leetcode.com/problems/remove-one-element-to-make-the-array-strictly-increasing/

class Solution {
    func canBeIncreasing(_ nums: [Int]) -> Bool {
        var tracker = [Bool](repeating: false, count: nums.count)
        for idx in nums.indices { 
            var flag = true
            var temp = nums
            temp.remove(at: idx)
            guard temp.count > 1 else { return true }
            for jdx in temp.indices where jdx != 0 {
                if !flag {
                    break
                }
                flag = temp[jdx] > temp[jdx-1]
            }
            tracker[idx] = flag
            if flag {
                return true
            }
        }
        return tracker.contains(true)
    }
}
