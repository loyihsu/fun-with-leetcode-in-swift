// Problem: https://leetcode.com/problems/super-pow/

class Solution {
    private func powerHelper(base: Int, pow: Int) -> Int {
        var answer = 1
        for _ in 0..<pow {
            answer = answer % 1337 * base % 1337
        }
        return answer % 1337
    }
    func superPow(_ a: Int, _ b: [Int]) -> Int {
        guard a != 1 else { return 1 }
        var base = a % 1337, answer = 1, idx = b.count - 1
        while idx >= 0 {
            answer = answer * powerHelper(base: base, pow: b[idx]) % 1337
            base = powerHelper(base: base, pow: 10)
            idx -= 1
        }
        return answer
    }
}
