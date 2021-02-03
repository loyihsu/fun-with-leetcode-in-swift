// Problem: https://leetcode.com/problems/di-string-match/

class Solution {
    func diStringMatch(_ S: String) -> [Int] {
        var low = 0, high = S.count, output = [Int](repeating: 0, count: high + 1), pos = 0
        
        for char in S {
            if char == "I" {
                output[pos] = low
                low += 1
            } else {
                output[pos] = high
                high -= 1
            }
            pos += 1
        }
        output[S.count] = low
        
        return output
    }
}
