// Problem: https://leetcode.com/problems/shuffle-string/

class Solution {
    func restoreString(_ s: String, _ indices: [Int]) -> String {
        var output = Array<Character>(s)
        for (index, indice) in indices.enumerated() {
            output[indice] = s[s.index(s.startIndex, offsetBy: index)]
        }
        return String(output)
    }
}
