// Problem: https://leetcode.com/problems/set-mismatch/

class Solution {
    func findErrorNums(_ nums: [Int]) -> [Int] {
        var count = [Int](repeating: 0, count: nums.count + 1), output = [Int](repeating: -1, count: 2)
        nums.forEach { count[$0] += 1 }
        for index in 1...nums.count {
            output[0] = count[index] == 2 ? index : output[0]
            output[1] = count[index] == 0 ? index : output[1]
        }
        output[0] = output[0] == -1 ? 2 : output[0]
        output[1] = output[1] == -1 ? 2 : output[1]
        return output
    }
}
