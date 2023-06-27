// Problem: https://leetcode.com/problems/find-the-original-array-of-prefix-xor/description/

class Solution {
    func findArray(_ pref: [Int]) -> [Int] {
        var output = pref
        for idx in 1 ..< pref.count {
            output[idx] = pref[idx - 1] ^ pref[idx]
        }
        return output
    }
}
