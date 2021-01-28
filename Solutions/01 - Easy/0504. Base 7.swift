// Problem: https://leetcode.com/problems/base-7/

class Solution {
    func convertToBase7(_ num: Int) -> String {
        guard num != 0 else { return "0" }
        var poses = [Int](), absnum = num < 0 ? -num : num
        var temp = 1, res = num < 0 ? "-" : ""
        while temp <= absnum {
            temp *= 7
        }
        temp /= 7
        while temp >= 1 {
            var cur = 0
            while absnum >= temp {
                absnum -= temp
                cur += 1
            }
            res.append("\(cur)")
            temp /= 7
        }
        return res
    }
}
