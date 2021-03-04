// Problem: https://leetcode.com/problems/uncommon-words-from-two-sentences/

class Solution {
    func parser(_ str: String) -> [String] {
        var output = [String](), temp = ""
        for char in str {
            if char != " " {
                temp.append(char)
            } else {
                output.append(temp)
                temp = ""
            }
        }
        output.append(temp)
        return output
    }
    func uncommonFromSentences(_ A: String, _ B: String) -> [String] {
        let full = parser(A + " " + B)
        var map = [String: Int]()
        full.forEach { map[$0, default: 0] += 1 }
        return Array(map.filter { $1 == 1 }.keys)
    }
}
