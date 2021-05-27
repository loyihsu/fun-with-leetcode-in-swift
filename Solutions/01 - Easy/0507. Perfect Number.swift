// Problem: https://leetcode.com/problems/perfect-number/

class Solution {
    func checkPerfectNumber(_ num: Int) -> Bool {
        guard num != 1 else { return false }
        var sum = -num
        for idx in 1...Int(sqrt(Double(num))) where num % idx == 0 {
            sum += idx
            sum += num/idx
            if sum > num {
                return false
            }
        }
        return sum == num
    }
}
