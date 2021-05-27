// Problem: https://leetcode.com/problems/first-unique-character-in-a-string/

class Solution {
    func generateLowercasedMap() -> [Character: Int] {
        let str = Array("abcdefghijklmnopqrstuvwxyz")
        var output = [Character: Int]()
        for (index, value) in str.enumerated() {
            output[value] = index
        }
        return output
    }
    func firstUniqChar(_ s: String) -> Int {
        let map = generateLowercasedMap()
        var counter = [Int](repeating: 0, count: 26)
        s.forEach { counter[map[$0]!] += 1 }
        for (index, value) in s.enumerated() where counter[map[value]!] == 1 {
            return index
        }
        return -1
    }
}
