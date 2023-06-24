// Problem: https://leetcode.com/problems/count-odd-numbers-in-an-interval-range/

class Solution {
    func countOdds(_ low: Int, _ high: Int) -> Int {
        (high - low + 1) / 2 + ((high - low + 1) % 2 != 0 && low % 2 == 1 ? 1 : 0)
    }
}
