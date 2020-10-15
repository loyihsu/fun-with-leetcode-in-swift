// Problem: https://leetcode.com/problems/power-of-three/

class Solution {
    func log3(_ n: Double) -> Double {
        return log(n)/log(3.0)
    }
    func isPowerOfThree(_ n: Int) -> Bool {
        guard n != 0 else { return false }
        let logn = log3(Double(n))
        return Int(String(format: "%.10f", logn).components(separatedBy: ".").last!) == 0
    }
}
