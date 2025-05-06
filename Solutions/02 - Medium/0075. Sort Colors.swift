// Problem: https://leetcode.com/problems/sort-colors/

class Solution {
    func qsort(_ nums: inout [Int], _ min: Int, _ max: Int) {
        guard min < max, min >= 0, max < nums.count else { return }
        var i = min, j = max
        let standard = nums[min]

        while i != j {
            while nums[j] >= standard, i < j {
                j -= 1
            }
            while nums[i] <= standard, i < j {
                i += 1
            }
            if i < j {
                var temp = nums[i]
                nums[i] = nums[j]
                nums[j] = temp
            }
        }

        nums[min] = nums[i]
        nums[i] = standard

        qsort(&nums, min, i - 1)
        qsort(&nums, i + 1, max)
    }

    func sortColors(_ nums: inout [Int]) {
        qsort(&nums, 0, nums.count - 1)
    }
}
