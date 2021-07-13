// Problem: https://leetcode.com/problems/redistribute-characters-to-make-all-strings-equal/

class Solution {
    func makeEqual(_ words: [String]) -> Bool {
        var map = [Character: Int](), flag = true
        for word in words {
            for char in word {
                map[char] = (map[char] ?? 0) + 1
            }
        }
        for value in map.values where flag {
            flag = value % words.count == 0
        }
        return flag
    }
}
