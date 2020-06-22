// Problem: https://leetcode.com/problems/xor-operation-in-an-array/

class Solution {
    func xorOperation(_ n: Int, _ start: Int) -> Int {
        var element = start + 2, output = start
        
        while element < start + 2 * n {
            output = output ^ element
            element += 2
        }
        
        return output
    }
}
