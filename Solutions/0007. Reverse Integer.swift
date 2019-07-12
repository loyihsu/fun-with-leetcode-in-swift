// Problem: https://leetcode.com/problems/reverse-integer/

class Solution {
    func reverse(_ x: Int) -> Int {
        // Handling negatives
        let flag: Bool = (x > 0)
        let num = (flag) ? x : x * (-1)
        let result = (flag) ? Int(String(String(num).reversed()))! : Int(String(String(num).reversed()))! * -1
        
        if (result > 2147483647 || result < -2147483648) { return 0 } // Handling overflow
        else { return result }
    }
}