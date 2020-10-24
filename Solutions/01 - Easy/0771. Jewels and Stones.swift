// Problem: https://leetcode.com/problems/jewels-and-stones/

class Solution {
    func numJewelsInStones(_ J: String, _ S: String) -> Int {
        var count = 0
        S.forEach {
            if J.contains($0) { count += 1 }
        }
        return count
    }
}
