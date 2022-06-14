// Problem: https://leetcode.com/problems/check-if-n-and-its-double-exist/

class Solution {
    func checkIfExist(_ arr: [Int]) -> Bool {
        var map = [Int: Int]()
        arr.forEach { map[$0] = (map[$0] ?? 0) + 1 }
        for value in arr {
            if let val = map[value], let double = map[2 * value] {
                if value == 2 * value, double > 1 {
                    return true
                } else if value != 2 * value {
                    return true
                }
            }
        }
        return false
    }
}
