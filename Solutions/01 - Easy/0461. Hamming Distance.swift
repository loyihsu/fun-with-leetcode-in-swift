// Problem: https://leetcode.com/problems/hamming-distance/

class Solution {
    func hammingDistance(_ x: Int, _ y: Int) -> Int {
        return (x ^ y).nonzeroBitCount
    }
}
