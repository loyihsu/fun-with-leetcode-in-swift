// Problem: https://leetcode.com/problems/jewels-and-stones/

class Solution {
    func numJewelsInStones(_ J: String, _ S: String) -> Int {
        var count = 0
        S.forEach { (c) in
            if (J.contains(c)) { count += 1 }
        }
        return count
    }
}
