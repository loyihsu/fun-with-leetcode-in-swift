// Problem: https://leetcode.com/problems/power-of-four/

class Solution {
    func isPowerOfFour(_ num: Int) -> Bool {
        let logged = log(Double(num))/log(4)
        return logged >= 0 && logged == Double(Int(logged))
    }
}
