// Problem: https://leetcode.com/problems/longest-common-prefix/

class Solution {
    func commonPrefix(str1: String, str2: String) -> String {
        let count = str1.count > str2.count ? str2.count : str1.count
        var sindex1 = str1.startIndex
        var sindex2 = str2.startIndex
        var output = ""
        
        for _ in 0..<count {
            if str1[sindex1] != str2[sindex2] {
                break
            } else {
                output.append(str1[sindex1])
            }
            
            sindex1 = str1.index(after: sindex1)
            sindex2 = str2.index(after: sindex2)
        }
        
        return output
    }
    
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.isEmpty == true {
            return ""
        }
        
        var current = strs[0]
        
        for s in strs {
            current = commonPrefix(str1: current, str2: s)
        }
        
        return current
    }
}
