// Problem: https://leetcode.com/problems/make-two-arrays-equal-by-reversing-sub-arrays/

class Solution {
    func canBeEqual(_ target: [Int], _ arr: [Int]) -> Bool {
        guard target.count == arr.count else { return false }
        var tar = [Int](repeating: 0, count: 1001), aay = [Int](repeating: 0, count: 1001)
        for index in 0 ..< target.count {
            tar[target[index]] += 1
            aay[arr[index]] += 1
        }
        for index in 0 ..< 1001 where tar[index] != aay[index] {
            return false
        }
        return true
    }
}
