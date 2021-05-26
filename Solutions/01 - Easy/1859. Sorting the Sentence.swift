// Problem: https://leetcode.com/problems/sorting-the-sentence/

class Solution {
    func generateList(_ string: String) -> (res: [(idx: Int, str: String)], max: Int) {
        var result: [(idx: Int, str: String)] = []
        var temp = "", max = 0
        for char in string {
            if char == " " {
                if let last = temp.popLast(), let val = Int("\(last)") {
                    result.append((val, temp))
                    max = val > max ? val : max
                }
                temp = ""
            } else {
                temp.append(char)
            }
        }
        if let last = temp.popLast(), let val = Int("\(last)") {
            result.append((val, temp))
            max = val > max ? val : max
        }
        return (result, max: max)
    }
    func sortSentence(_ s: String) -> String {
        let parsed = generateList(s)
        var result = [String](repeating: "", count: parsed.max)
        for (idx, str) in parsed.0 {
            result[idx-1] = str
        }
        return result.joined(separator: " ")
    }
}
