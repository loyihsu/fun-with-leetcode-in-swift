// Problem: https://leetcode.com/problems/increasing-decreasing-string/

class Solution {
    func sortString(_ s: String) -> String {
        var dictionary = [Character : Int](), res = ""
        s.forEach { dictionary[$0] = (dictionary[$0] ?? 0) + 1 }
        let sortedKeys = dictionary.map { $0.key }.sorted()
        guard sortedKeys.count > 1 else { return s }
        while dictionary.reduce(0, { $0 + $1.value }) > 0 {
            for char in sortedKeys where dictionary[char]! > 0 {
                res.append(char)
                dictionary[char] = dictionary[char]! - 1
            }
            for char in sortedKeys.reversed() where dictionary[char]! > 0 {
                res.append(char)
                dictionary[char] = dictionary[char]! - 1
            }
        }
        return res
    }
}
