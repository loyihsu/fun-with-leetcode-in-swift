// Problem: https://leetcode.com/problems/remove-duplicates-from-sorted-array-ii/description/

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var temp: (val: Int, count: Int) = (0, 0)
        var idx = 0

        var count = nums.count

        while idx < count {
            if nums[idx] == temp.val {
                if temp.count == 2 {
                    removeFromArray(at: idx, from: &nums)
                    count -= 1
                } else {
                    temp.count += 1
                    idx += 1
                }
            } else {
                temp = (nums[idx], 1)
                idx += 1
            }
        }

        return count
    }

    private func removeFromArray(at index: Int, from array: inout [Int]) {
        for idx in index ..< array.count where idx + 1 < array.count {
            array[idx] = array[idx + 1]
        }
    }
}
