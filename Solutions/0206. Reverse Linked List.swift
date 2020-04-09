// Problem: https://leetcode.com/problems/reverse-linked-list/

class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var newList: ListNode?
        var temp = head
        
        while let t = temp {
            var newNode = ListNode.init(t.val)
            
            if newList != nil {
                newNode.next = newList
                newList = newNode
            } else {
                newList = newNode
            }
            
            temp = t.next
        }
        
        return newList
    }
}