// Problem: https://leetcode.com/problems/faulty-keyboard/description/

class Solution {
    func finalString(_ s: String) -> String {
        var output = [Character]()
        output.reserveCapacity(s.count)
        for char in s {
            if char == "i" {
                output = output.reversed()
            } else {
                output.append(char)
            }
        }
        return String(output)
    }
}
