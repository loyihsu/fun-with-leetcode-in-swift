// Problem: https://leetcode.com/problems/convert-binary-number-in-a-linked-list-to-integer/

class Solution {
    func getDecimalValue(_ head: ListNode?) -> Int {
        var output = 0, temp = head
        
        while let t = temp {
            output = output * 2 + t.val
            temp = t.next
        }
        
        return output
    }
}
