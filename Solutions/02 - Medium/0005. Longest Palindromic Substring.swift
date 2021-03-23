// Problem: https://leetcode.com/problems/longest-palindromic-substring/

class Solution {
    func update(_ start: inout Int, _ max: inout Int, _ left: inout Int, right: inout Int) {
        if right-left+1 > max {
            (start, max) = (left, right-left+1)
        }
        (left, right) = (left - 1, right + 1)
    }
    func longestPalindrome(_ s: String) -> String {
        var arr = Array(s), (max, start, left, right) = (1, 0, 0, 0)
        for idx in arr.indices {
            (left, right) = (idx - 1, idx)    // Expand from arr[idx-1...idx]
            while left >= 0 && right < arr.count && arr[left] == arr[right] {
                update(&start, &max, &left, right: &right)
            }
            (left, right) = (idx - 1, idx + 1) // Expand from arr[idx-1...idx+1]
            while left >= 0 && right < arr.count && arr[left] == arr[right] {
                update(&start, &max, &left, right: &right)
            }
        }
        return String(arr[start..<start+max])
    }
}
