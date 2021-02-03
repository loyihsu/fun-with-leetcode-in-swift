// Problem: https://leetcode.com/problems/remove-all-adjacent-duplicates-in-string/

class Solution {
    func removeDuplicates(_ S: String) -> String {
        var output = ""
        for char in S {
            if output.isEmpty {
                output.append(char)
            } else if output.last! == char {
                output.removeLast()
            } else {
                output.append(char)
            }
        }
        
        return output
    }
}
