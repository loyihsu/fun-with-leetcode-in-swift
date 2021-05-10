// Problem: https://leetcode.com/problems/repeated-substring-pattern/

class Solution {
    func repeatedSubstringPattern(_ s: String) -> Bool {
        var temp = s + s
        temp = String(temp[temp.index(after: temp.startIndex)..<temp.index(before: temp.endIndex)])
        return temp.contains(s)
    }
}
