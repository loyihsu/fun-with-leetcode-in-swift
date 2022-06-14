// Problem: https://leetcode.com/problems/compare-strings-by-frequency-of-the-smallest-character/

class Solution {
    var map = [String: Int]()
    func smallestCharacterCount(in str: String) -> Int {
        guard map[str] == nil else { return map[str]! }
        var min = Int.max, output = 0
        for count in str.unicodeScalars {
            if count.value < min {
                min = Int(count.value)
                output = 1
            } else if count.value == min {
                output += 1
            }
        }
        map[str] = output
        return output
    }

    func numSmallerByFrequency(_ queries: [String], _ words: [String]) -> [Int] {
        let counts: [Int] = words.map { smallestCharacterCount(in: $0) }
        var output = [Int](repeating: 0, count: queries.count)
        for idx in 0 ..< output.count {
            output[idx] = counts.filter { smallestCharacterCount(in: queries[idx]) < $0 }.count
        }
        return output
    }
}
