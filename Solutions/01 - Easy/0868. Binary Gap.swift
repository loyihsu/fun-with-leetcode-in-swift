// Problem: https://leetcode.com/problems/binary-gap/

class Solution {
    func binaryGap(_ n: Int) -> Int {
        var binary = [String](), temp = n
        while temp > 0 {
            binary.append("\(temp % 2)")
            temp /= 2
        }
        guard binary.filter { $0 == "1" }.count > 1 else { return 0 }
        var max = 0, prev = binary.firstIndex(of: "1")!
        for idx in binary.indices where binary[idx] == "1" {
            max = idx - prev > max ? idx - prev : max
            prev = idx
        }
        return max
    }
}
