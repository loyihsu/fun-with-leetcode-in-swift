// Problem: https://leetcode.com/problems/1-bit-and-2-bit-characters/

class Solution {
    func isOneBitCharacter(_ bits: [Int]) -> Bool {
        var index = 0
        let lastIndex = bits.count - 1
        
        while index <= lastIndex {
            if index == lastIndex && bits[index] == 0 {
                return true
            } else if bits[index] == 1 {
                index += 2
            } else {
                index += 1
            }
        }
        
        return false 
    }
}
