// Problem: https://leetcode.com/problems/rotate-string/

class Solution {
    func rotateString(_ A: String, _ B: String) -> Bool {
        guard A != B else { return true } 
        var temp = A
        for _ in 0..<temp.count {
            let first = temp.removeFirst()
            temp.append(first)
            if temp == B {
                return true
            }
        }
        return false
    }
}
