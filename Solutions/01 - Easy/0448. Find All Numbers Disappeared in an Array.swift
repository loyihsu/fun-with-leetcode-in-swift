// Problem: https://leetcode.com/problems/find-all-numbers-disappeared-in-an-array/

class Solution {
    func findIndexOf(_ num: Int, in array: [Int]) -> Int? {
        var left = 0, right = array.count
        while left < right {
            var mid = (left + right) / 2
            if array[mid] == num {
                return mid
            } else if array[mid] > num {
                right = mid
            } else {
                left = mid + 1
            }
        }
        return nil
    }
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        guard !nums.isEmpty else { return [] }
        var arr = Array(1...nums.count)
        for num in nums {
            if let idx = findIndexOf(num, in: arr) {
                arr.remove(at: idx)
            }
        }
        return arr
    }
}
