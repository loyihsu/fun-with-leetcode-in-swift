// Problem: https://leetcode.com/problems/reverse-vowels-of-a-string/

class Solution {
    func reverseVowels(_ s: String) -> String {
        var temp = "", output = ""
        for char in s where "AaEeIiOoUu".contains(char) {
            temp.append(char)
        }
        for char in s {
            if "AaEeIiOoUu".contains(char) {
                output.append(temp.popLast()!)
            } else {
                output.append(char)
            }
        }
        return output
    }
}
