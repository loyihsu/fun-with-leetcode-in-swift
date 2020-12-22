// Problem: https://leetcode.com/problems/get-maximum-in-generated-array/

class Solution {
    func getMaximumGenerated(_ n: Int) -> Int {
        guard n > 0 else { return 0 }
        var array = [Int](repeating: 0, count: n+1), max = 1
        array[1] = 1
        for idx in 2..<array.count {
            array[idx] = array[idx / 2]
            if idx % 2 != 0 {
                array[idx] += array[(idx / 2) + 1]
            }
            if array[idx] > max {
                max = array[idx]
            }
        }
        return max
    }
}
