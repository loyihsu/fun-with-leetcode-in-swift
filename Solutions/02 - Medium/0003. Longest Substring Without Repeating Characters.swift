// Problem: https://leetcode.com/problems/longest-substring-without-repeating-characters/

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        let string = Array(s)
        var lastEncounter = [Character: Int]()

        var cursor = [Character]()
        var maxCount = 0

        for (index, value) in string.enumerated() {
            if !cursor.contains(value) {
                cursor.append(value)
            } else {
                if cursor.count > maxCount {
                    maxCount = cursor.count
                }
                let lastEncounter = lastEncounter[value, default: index]
                cursor = Array(string[lastEncounter + 1 ... index])
            }
            lastEncounter[value] = index
        }

        return max(maxCount, cursor.count)
    }
}
