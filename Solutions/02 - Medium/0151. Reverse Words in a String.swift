// Problem: https://leetcode.com/problems/reverse-words-in-a-string/

class Solution {
    func reverseWords(_ s: String) -> String {
        var temp = "", stack = [String]()
        for char in s {
            if char == " ", temp.isEmpty == false {
                stack.append(temp)
                temp = ""
            } else if char != " " {
                temp.append(char)
            }
        }
        if temp.isEmpty == false {
            stack.append(temp)
        }
        temp = ""
        while let element = stack.popLast() {
            temp.append(element)
            temp.append(" ")
        }
        temp.popLast()
        return temp
    }
}
