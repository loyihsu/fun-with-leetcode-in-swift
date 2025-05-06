// Problem: https://leetcode.com/problems/valid-anagram/description/

class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        let sMap = {
            var map = [Character: Int]()
            for character in s {
                map[character, default: 0] += 1
            }
            return map
        }()
        let tMap = {
            var map = [Character: Int]()
            for character in t {
                map[character, default: 0] += 1
            }
            return map
        }()
        return sMap == tMap
    }
}
