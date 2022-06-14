// Problem: https://leetcode.com/problems/mean-of-array-after-removing-some-elements/

class Solution {
    func trimMean(_ arr: [Int]) -> Double {
        let chunkedSortedArray = arr.sorted()[Int(Double(arr.count) * 0.05) ..< arr.count - Int(Double(arr.count) * 0.05)]
        return Double(chunkedSortedArray.reduce(0, +)) / Double(chunkedSortedArray.count)
    }
}
