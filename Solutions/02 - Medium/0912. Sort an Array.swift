// Problem: https://leetcode.com/problems/sort-an-array/

class Solution {
    func sortArray(_ nums: [Int]) -> [Int] {
        var arr = nums
        qsort(&arr, 0, arr.count-1)
        return arr
    }
    func qsort(_ arr: inout [Int], _ left: Int, _ right: Int) {
        guard left < right && left >= 0 && right < arr.count else { return }
        var start = left, end = right, standard = arr[left]
        while start < end {
            while arr[end] >= standard && start < end {
                end -= 1
            }
            while arr[start] <= standard && start < end {
                start += 1
            }
            if start < end {
                let temp = arr[end]
                arr[end] = arr[start]
                arr[start] = temp
            }
        }

        arr[left] = arr[start]
        arr[start] = standard

        qsort(&arr, left, start-1)
        qsort(&arr, start+1, right)
    }
}
