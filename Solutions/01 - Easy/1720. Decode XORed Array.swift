// Problem: https://leetcode.com/problems/decode-xored-array/

class Solution {
    func decode(_ encoded: [Int], _ first: Int) -> [Int] {
        var result = [Int](repeating: first, count: encoded.count + 1)
        for idx in 1..<result.count {
            result[idx] = encoded[idx-1] ^ result[idx-1]
        }
        return result
    }
}
