// Problem: https://leetcode.com/problems/check-if-binary-string-has-at-most-one-segment-of-ones/

class Solution {
    func checkOnesSegment(_ s: String) -> Bool {
        s.components(separatedBy: "0").filter { !$0.isEmpty }.count <= 1
    }
}
