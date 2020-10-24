// Problem: https://leetcode.com/problems/happy-number/

class Solution {
    func getSqrDigs(_ number: Int) -> Int {
        var n = number, output = 0, a = -1
        while n > 0 {
            a = n % 10
            output += a * a
            n /= 10
        }
        return output
    }
    func isHappy(_ n: Int) -> Bool {
        var temp = getSqrDigs(n), dic = [Int: Bool]()
        while temp != 1 {
            if dic[temp] == true {
                return false
            }
            dic[temp] = true
            temp = getSqrDigs(temp)
        }
        return true
    }
}
