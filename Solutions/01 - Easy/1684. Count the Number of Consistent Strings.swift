// Problem: https://leetcode.com/problems/count-the-number-of-consistent-strings/

class Solution {
    func countConsistentStrings(_ allowed: String, _ words: [String]) -> Int {
        var map = [Character: Bool](), count = 0
        for char in allowed {
            map[char] = true
        }
        for str in words {
            var flag = true
            for char in str where map[char, default: false] == false {
                flag = false
                break
            }
            if flag {
                count += 1
            }
        }
        return count
    }
}
