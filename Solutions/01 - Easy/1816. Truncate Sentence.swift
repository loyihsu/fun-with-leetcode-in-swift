// Problem: https://leetcode.com/problems/truncate-sentence/

class Solution {
    func split(sentence: String) -> [String] {
        var output = [String](), temp = ""
        for char in sentence {
            if char == " " {
                output.append(temp)
                temp = ""
            } else {
                temp.append(char)
            }
        }
        if temp.isEmpty == false {
            output.append(temp)
        }
        return output
    }
    func truncateSentence(_ s: String, _ k: Int) -> String {
        let res = split(sentence: s)
        var output = ""
        for idx in 0..<k {
            output += " \(res[idx])"
        }
        return String(output[output.index(after: output.startIndex)...])
    }
}
