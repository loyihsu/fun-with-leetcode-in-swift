// Problem: https://leetcode.com/problems/find-the-difference/

class Solution {
    func findTheDifference(_ s: String, _ t: String) -> Character {
        var map = [Character: Int](), result = Character("z")
        s.forEach { map[$0] = (map[$0] ?? 0) + 1 }
        for char in t {
            if let temp = map[char], temp > 0 {
                map[char] = temp - 1
            } else {
                result = char
            }
        }
        return result
    }
}
