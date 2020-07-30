// Problem: https://leetcode.com/problems/sort-colors/

class Solution {
    func swapAt(_ nums: inout [Int], _ a: Int, _ b: Int) {
        var temp = nums[a]
        nums[a] = nums[b]
        nums[b] = temp
    }
    
    func qsort(_ nums: inout [Int], _ min: Int, _ max: Int) {
        var i = min, j = max
        let standard = nums[min]

        if min > max { return }

        while i != j {
            while nums[j] >= standard && i < j { j -= 1 }
            while nums[i] <= standard && i < j { i += 1 }
            if i < j { swapAt(&nums, i, j) }
        }

        nums[min] = nums[i]
        nums[i] = standard

        if i - 1 > 0 { qsort(&nums, min, i-1) }
        if i + 1 < nums.count { qsort(&nums, i+1, max) }
    }
    
    func sortColors(_ nums: inout [Int]) {
        qsort(&nums, 0, nums.count-1)
    }
}
