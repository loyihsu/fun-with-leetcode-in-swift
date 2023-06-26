// Problem: https://leetcode.com/problems/convert-an-array-into-a-2d-array-with-conditions/description/

class Solution {
    func findMatrix(_ nums: [Int]) -> [[Int]] {
        var output = [[Int]]()

        for num in nums {
            var inserted = false

            for idx in output.indices where !output[idx].contains(num) && !inserted {
                output[idx].append(num)
                inserted = true
            }

            if inserted == false {
                output.append([num])
            }
        }

        return output
    }
}
