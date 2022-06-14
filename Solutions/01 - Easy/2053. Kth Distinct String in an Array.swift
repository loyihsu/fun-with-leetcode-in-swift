// Problem: https://leetcode.com/problems/kth-distinct-string-in-an-array/

class Solution {
    func kthDistinct(_ arr: [String], _ k: Int) -> String {
        var counter = [String: Int](), k = k
        for item in arr {
            counter[item, default: 0] += 1
        }
        let keys = Set(counter.filter { $1 == 1 }.keys)
        for item in arr where keys.contains(item) {
            k -= 1
            if k == 0 {
                return item
            }
        }
        return ""
    }
}
