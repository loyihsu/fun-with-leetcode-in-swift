// Problem: https://leetcode.com/problems/reverse-bits/

class Solution {
    func reverseBits(_ n: Int) -> Int {
        var str = String(n, radix: 2)
        str = String.init(repeating: "0", count: 32-str.count) + str
        var output = 0
        str.reversed().forEach { output = output * 2 + ($0 == "0" ? 0 : 1) }
        return output
    }
}
