// Problem: https://leetcode.com/problems/decrypt-string-from-alphabet-to-integer-mapping/

class Solution {
    func freqAlphabets(_ s: String) -> String {
        let cindex: [Character] = ["1","2","3","4","5","6","7","8","9"]
        let strIndex: [Substring] = ["10","11","12","13","14","15","16",
                                     "17","18","19","20","21","22","23",
                                     "24","25","26"]
        
        let chars = "abcdefghi"
        let strs = "jklmnopqrstuvwxyz"
        
        var charypt = [Character : Character]()
        var decrypt = [Substring : Character]()

        for (index, char) in chars.enumerated() {
            charypt[cindex[index]] = char
        }
        
        for (index, char) in strs.enumerated() {
            decrypt[strIndex[index]] = char
        }
        
        var output = ""
        var index = s.startIndex
        
        while index < s.endIndex {
            if s.distance(from: index, to: s.endIndex) > 2 {
                if s[s.index(index, offsetBy: 2)] == "#" {
                    output.append(decrypt[s[index..<s.index(index, offsetBy: 2)]]!) 
                    index = s.index(index, offsetBy: 3)
                    continue
                }
            }
            output.append(charypt[s[index]]!)
            index = s.index(after: index)
        }
        
        return output
    }
}
