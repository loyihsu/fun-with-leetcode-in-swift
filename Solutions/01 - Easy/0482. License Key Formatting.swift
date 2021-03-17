// Problem: https://leetcode.com/problems/license-key-formatting/

class Solution {
    func licenseKeyFormatting(_ S: String, _ K: Int) -> String {
        var output = "", idx = S.index(before: S.endIndex), temp = ""
        while idx >= S.startIndex {
            if S[idx] != "-" {
                temp.append(S[idx].uppercased())   
            }            
            if temp.count == K {
                output += !output.isEmpty ? "-" + temp : temp
                temp = ""
            }
            if idx != S.startIndex {
                idx = S.index(before: idx)
            } else {
                if temp.isEmpty == false {
                    output += !output.isEmpty ? "-" + temp : temp
                }
                break
            }
        }
        return String(output.reversed())
    }
}
