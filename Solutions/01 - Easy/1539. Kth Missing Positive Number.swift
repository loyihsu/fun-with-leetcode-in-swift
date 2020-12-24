// Problem: https://leetcode.com/problems/kth-missing-positive-number/

class Solution {
    func find(_ number: Int, in array: [Int]) -> Int? {
        var left = 0, right = array.count - 1
        while left <= right {
            var mid = (left + right) / 2
            if number == array[mid] {
                return mid
            } else if number > array[mid] {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }
        return nil
    }
    func findKthPositive(_ arr: [Int], _ k: Int) -> Int {
        var counter = 0, testcase = 1
        while counter < k {
            if find(testcase, in: arr) == nil {
                counter += 1
            }
            if counter < k {
                testcase += 1
            }
        }
        return testcase
    }
}
