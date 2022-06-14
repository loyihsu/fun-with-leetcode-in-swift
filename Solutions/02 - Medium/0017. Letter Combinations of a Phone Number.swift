// Problem: https://leetcode.com/problems/letter-combinations-of-a-phone-number/

class Solution {
    func letterCombinations(_ digits: String) -> [String] {
        let searchMap = ["", "", "abc", "def", "ghi", "jkl", "mno", "pqrs", "tuv", "wxyz"]
        var output = [String]()

        for digit in digits {
            var temp = [String]()

            for t in output {
                if let d = digit.wholeNumberValue {
                    for c in searchMap[d] {
                        temp.append("\(t)\(c)")
                    }
                }
            }

            if temp.isEmpty {
                if let d = digit.wholeNumberValue {
                    for c in searchMap[d] {
                        temp.append("\(c)")
                    }
                }
            }

            output = temp
        }

        return output
    }
}
