// Problem: https://leetcode.com/problems/occurrences-after-bigram/

class Solution {
    func findOcurrences(_ text: String, _ first: String, _ second: String) -> [String] {
        var components = text.components(separatedBy: .whitespaces), index = 0, output = [String]()
        for item in components {
            if index == 0 || index == 1, item == first {
                index = 1
            } else if index == 1, item == second {
                index += 1
            } else if index == 2 {
                if item == first {
                    index = 1
                } else {
                    index = 0
                }
                output.append(item)
            } else {
                index = 0
            }
        }
        return output
    }
}
