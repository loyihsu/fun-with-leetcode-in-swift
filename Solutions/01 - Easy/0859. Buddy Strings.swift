// Problem: https://leetcode.com/problems/buddy-strings/

class Solution {
    func atLeastOneBiggerThanTwo(_ str: [Character]) -> Bool {
        var map = [Character: Int]()
        str.forEach { map[$0, default: 0] += 1 }
        return map.contains(where: { _, val in val > 1 })
    }

    func buddyStrings(_ a: String, _ b: String) -> Bool {
        guard a.count > 1 else { return false }
        guard Set(a).count > 1 || a != b else { return true }
        guard a.count == b.count else { return false }
        var a = Array(a), b = Array(b), count = 0, stack = ""
        for idx in a.indices where a[idx] != b[idx] {
            if stack.isEmpty {
                stack = "\(a[idx])\(b[idx])"
            } else if stack.first == b[idx], stack.last == a[idx] {
                stack = ""
            }
            if count < 2 {
                count += 1
            } else {
                return false
            }
        }
        return count == 2 && stack.isEmpty || count == 0 && Set(a).count > 1 && a == b && atLeastOneBiggerThanTwo(a)
    }
}
