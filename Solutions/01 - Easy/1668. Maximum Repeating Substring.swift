// Problem: https://leetcode.com/problems/maximum-repeating-substring/

class Solution {
    func maxRepeating(_ sequence: String, _ word: String) -> Int {
        var count = 0
        let max = sequence.count / word.count
        guard max > 0 else { return 0 }
        for num in 1 ... max where sequence.contains(String(repeating: word, count: num)) {
            count = num
        }
        return count
    }
}
