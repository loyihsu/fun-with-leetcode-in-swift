// Problem: https://leetcode.com/problems/final-value-of-variable-after-performing-operations/

class Solution {
    func finalValueAfterOperations(_ operations: [String]) -> Int {
        var output = 0
        for operation in operations {
            if operation.contains("++") {
                output += 1
            } else {
                output -= 1
            }
        }
        return output
    }
}
