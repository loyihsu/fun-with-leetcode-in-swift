// Problem: https://leetcode.com/problems/middle-of-the-linked-list/

class Solution {
    func middleNode(_ head: ListNode?) -> ListNode? {
        var temp = head
        var count = 0
        
        while let t = temp, let next = t.next {
            count += 1
            temp = next
        }
        
        count = count % 2 == 0 ? count / 2 : count / 2 + 1
        
        temp = head
        
        while count > 0 {
            if let t = temp, let next = t.next {
                temp = next
            }
            
            count -= 1
        }
        
        return temp
    }
}