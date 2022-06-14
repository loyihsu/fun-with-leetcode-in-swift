// Problem: https://leetcode.com/problems/largest-substring-between-two-equal-characters/

extension Character {
    var integerValue: Int { Int((unicodeScalars.first?.value)!) - 97 }
}

class Solution {
    func maxLengthBetweenEqualCharacters(_ s: String) -> Int {
        var map = [(Int, Int)](repeating: (-1, -1), count: 26), output = -1
        s.enumerated().forEach {
            if map[$1.integerValue].0 == -1 {
                map[$1.integerValue].0 = $0
            } else {
                map[$1.integerValue].1 = $0
            }
        }
        for value in map where value.1 != -1 {
            output = value.1 - value.0 - 1 > output ? value.1 - value.0 - 1 : output
        }
        return output
    }
}
