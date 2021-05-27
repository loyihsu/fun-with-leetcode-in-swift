// Problem: https://leetcode.com/problems/arithmetic-subarrays/

class Solution {
    func checkArithmetic(_ arr: [Int]) -> Bool {
        guard arr.count > 2 else { return true }
        let arr = arr.sorted()
        let diff = arr[1] - arr[0]
        for idx in 2..<arr.count where arr[idx] - arr[idx-1] != diff {
            return false
        }
        return true
    }
    func checkArithmeticSubarrays(_ nums: [Int], _ l: [Int], _ r: [Int]) -> [Bool] {
        var output = [Bool](repeating: false, count: l.count)
        for idx in l.indices {
            output[idx] = checkArithmetic(Array(nums[l[idx]...r[idx]]))
        }
        return output
    }
}
