// Problem: https://leetcode.com/problems/reverse-string/

class Solution {
    func reverseString(_ s: inout [Character]) {
        let count = s.count, odd = count % 2 == 1
        if count <= 1 { return }
        
        var index = 0, center = odd ? count / 2 : count / 2 - 1, temp = s[0]
        
        while index <= center {
            temp = s[index]
            s[index] = s[count - index - 1]
            s[count - index - 1] = temp
            
            index += 1
        }
    }
}
